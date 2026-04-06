# tree-sitter-likec4

Tree-sitter grammar for the LikeC4 DSL.

The grammar targets `.c4` and `.likec4` source files and is intended to be used by editor integrations such as Zed.

## Provenance

This grammar is intended to be maintained as a fork of `Lenivvenil/tree-sitter-likec4`.

The current version includes additional fixes and improvements for real LikeC4 workspaces, including parser fixes needed by the Zed extension.

## Status

The grammar focuses on practical editor support for LikeC4:

- syntax highlighting
- structural parsing for editor features
- incremental improvements for real-world LikeC4 workspaces

It is intentionally pragmatic rather than a perfect formal model of every LikeC4 rule.

## Development

Typical local workflow:

```sh
npm install
npx tree-sitter-cli generate
npx tree-sitter-cli parse /path/to/sample.c4
```

## Files

- `grammar.js`: grammar definition
- `queries/highlights.scm`: highlight queries
- `src/`: generated parser artifacts committed for consumers
