# homebrew-tools

Homebrew tools by BTD.

## dts

Data Tool Suite: a web IDE and MCP server for dbt projects (macOS only).

```sh
brew install --cask big-time-data/tools/dts
dts
```

The cask installs two binaries:

- `dts` starts the web IDE. `dts --mcp` starts the MCP server.
- `dts_mcp` is a standalone MCP server with the Claude Code hooks.

The cask updates automatically on each stable release.

## mcpq

Let an LLM query a customer's warehouse and find the context it needs.

```bash
brew install Big-Time-Data/tools/mcpq
```

## big-timer-cli

The command-line client for the BigTimer team server.

```sh
brew install big-time-data/tools/big-timer-cli
big-timer-cli auth login
```

Linux hosts without Homebrew can use `install-cli.sh` from the
[release](https://github.com/Big-Time-Data/big-timer-releases/releases).
