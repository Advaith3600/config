module.exports = {
  // Basic formatting
  semi: true,
  singleQuote: true,
  printWidth: 100,
  tabWidth: 2,
  useTabs: false,

  // Trailing commas (helps with git diffs)
  trailingComma: 'all',

  // Bracket and spacing
  bracketSpacing: true, // { foo: bar } instead of {foo: bar}
  bracketSameLine: false, // Put > on new line in JSX

  // JSX specific
  jsxSingleQuote: false, // Use single quotes in JSX

  // Arrow functions
  arrowParens: 'avoid', // x => x instead of (x) => x when possible

  // Object formatting
  quoteProps: 'as-needed', // Only quote object properties when needed

  // End of line
  endOfLine: 'lf', // Use LF line endings (Unix style)

  // Embedded language formatting
  embeddedLanguageFormatting: 'auto',

  // HTML whitespace sensitivity
  htmlWhitespaceSensitivity: 'css',

  // Prose wrapping (for markdown)
  proseWrap: 'preserve',

  // Range formatting
  rangeStart: 0,
  rangeEnd: Infinity,

  // Plugin specific overrides
  overrides: [
    {
      files: '*.md',
      options: {
        proseWrap: 'always',
        printWidth: 80, // Shorter lines for markdown
      },
    },
  ],
};
