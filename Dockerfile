FROM node:18-alpine AS builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run lint


FROM node:18-alpine
WORKDIR /usr/src/app
ENV NODE_ENV=production
COPY package*.json ./
RUN npm install --only=production && npm cache clean --force
COPY --from=builder /usr/src/app/src ./src
COPY --from=builder /usr/src/app/index.js ./ 

USER node

EXPOSE 3000
CMD ["npm", "start"]
