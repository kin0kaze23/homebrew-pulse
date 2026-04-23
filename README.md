# Homebrew Tap for Pulse CLI

[Pulse](https://github.com/kin0kaze23/pulse) — Safe cleanup and machine audit for macOS developers.

## Install

```bash
brew install kin0kaze23/tap/pulse
```

## Verify

```bash
pulse --help
pulse doctor
pulse analyze
```

## Upgrade

```bash
brew upgrade pulse
```

## Uninstall

```bash
brew uninstall pulse
```

## What gets installed

A single universal binary (`pulse`) in your Homebrew `bin` directory — no Swift toolchain required.

## Supported profiles

| Profile | What it cleans |
|---------|---------------|
| `xcode` | DerivedData, Archives, DeviceSupport, Simulators |
| `homebrew` | Download cache, old formulae/casks |
| `node` | npm cache, Yarn cache, pnpm store |

## Links

- [Main repo](https://github.com/kin0kaze23/pulse)
- [Documentation](https://github.com/kin0kaze23/pulse#readme)
- [Report issues](https://github.com/kin0kaze23/pulse/issues)
