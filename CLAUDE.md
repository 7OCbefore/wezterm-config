# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a WezTerm terminal emulator configuration written in Lua. The config uses a modular builder pattern where `wezterm.lua` is the entry point that chains together configuration modules via the `Config` class in `config/init.lua`.

## Commands

**Lint code:**
```sh
luacheck wezterm.lua colors/* config/* events/* utils/*
```

**Check formatting:**
```sh
stylua -g '!/config/init.lua' --check wezterm.lua colors/ config/ events/ utils/
```

**Format code:**
```sh
stylua -g '!/config/init.lua' wezterm.lua colors/ config/ events/ utils/
```

## Architecture

### Entry Point (`wezterm.lua`)
Loads backdrops, event handlers, then builds config via chained `Config:append()` calls:
- `config.appearance` - visual settings (colors, fonts, window, tabs, cursor)
- `config.bindings` - key bindings and key tables
- `config.domains` - SSH/WSL domain definitions
- `config.fonts` - font configuration
- `config.general` - general terminal settings
- `config.launch` - shell launch configuration

### Config Builder (`config/init.lua`)
A simple class that merges configuration tables with duplicate key detection via `wezterm.log_warn`.

### Utilities (`utils/`)
- `backdrops.lua` - background image selector using `wezterm.read_dir`; must be loaded early in `wezterm.lua` due to coroutine constraints
- `gpu_adapter.lua` - WebGPU adapter selection logic
- `math.lua` - math utilities
- `platform.lua` - OS detection (`is_mac`, `is_win`, `is_linux`)

### Event Handlers (`events/`)
- `left-status.lua` - left status bar setup
- `right-status.lua` - right status bar setup
- `tab-title.lua` - custom tab title formatting
- `new-tab-button.lua` - new tab button configuration

### Key Bindings
- `SUPER` = Alt (Windows/Linux) or Cmd (Mac)
- `SUPER_REV` = Alt+Ctrl (Windows/Linux) or Cmd+Ctrl (Mac)
- `LEADER` = SUPER_REV+Space

## Requirements

- WezTerm >= 20240127-113634-bbcac864
- JetBrainsMono Nerd Font installed
