import { FlatCompat } from '@eslint/eslintrc';
import { dirname } from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const compat = new FlatCompat({
  baseDirectory: __dirname,
});

const eslintConfig = [
  ...compat.config({
    plugins: ['unused-imports', 'simple-import-sort', 'prettier'],
    extends: ['next/core-web-vitals', 'next/typescript', 'prettier'],
    rules: {
      // Prettier integration
      'prettier/prettier': 'error',

      // Import ordering and organization
      'simple-import-sort/imports': [
        'error',
        {
          groups: [
            // React and Next.js imports first
            ['^react', '^next'],
            // Node.js built-ins
            ['^node:'],
            // External packages
            ['^@?\\w'],
            // Internal packages (adjust path as needed)
            ['^(@/|~/|\\./|\\.\\./)'],
            // Side effect imports
            ['^\\u0000'],
          ],
        },
      ],
      'simple-import-sort/exports': 'error',

      // Unused imports and variables
      'unused-imports/no-unused-imports': 'error',

      // Code quality (non-formatting)
      'no-console': 'warn',
      'no-debugger': 'error',
      'no-unused-expressions': 'error',
      'prefer-const': 'error',
      'no-var': 'error',

      // React specific (non-formatting)
      'react/prop-types': 'off', // Using TypeScript instead
      'react/display-name': 'off',
      'react/no-unescaped-entities': 'off',

      // Next.js specific
      '@next/next/no-html-link-for-pages': ['error'],
    },
  }),
];

export default eslintConfig;
