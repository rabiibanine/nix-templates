import js from "@eslint/js";
import ts from "@typescript-eslint/eslint-plugin";
import tsParser from "@typescript-eslint/parser";

export default [
  js.configs.recommended,
  {
    files: ["**/*.ts", "**/*.tsx"],
    languageOptions: {
      parser: tsParser,
      parserOptions: {
        project: "./tsconfig.json",
      },
    },
    plugins: {
      "@typescript-eslint": ts,
    },
    rules: {
      ...ts.configs.recommended.rules,

      // Code quality
      "no-console": "warn",
      "no-debugger": "error",
      "no-unused-vars": "off", // turn off base rule
      "@typescript-eslint/no-unused-vars": ["warn", { argsIgnorePattern: "^_" }], // use TS version instead
      eqeqeq: ["error", "always"],
      "no-use-before-define": "off", // turn off base rule
      "@typescript-eslint/no-use-before-define": "error", // use TS version instead
    },
  },
  {
    files: ["**/*.test.ts", "**/*.spec.ts", "**/__tests__/**"],
    rules: {
      "no-console": "off",
    },
  },
  {
    ignores: ["dist/**", "build/**", "node_modules/**", "coverage/**"],
  },
];
