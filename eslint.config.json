const pluginJs = require("@eslint/js");

module.exports = [
  pluginJs.configs.recommended,
  {
    languageOptions: {
      ecmaVersion: 2021,
      sourceType: "commonjs",
      globals: {
        // This tells ESLint that it is checking Node.js code, not browser code
        require: "readonly",
        process: "readonly",
        module: "readonly",
        __dirname: "readonly",
        console: "readonly",
        exports: "readonly"
      }
    },
    rules: {
      "no-unused-vars": "warn",
      "no-console": "off"
    }
  }
];
