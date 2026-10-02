# Tori's Homebrew tap

The cask for [Tori](https://gettori.app), a cockpit for the coding agents you
already run. Source and releases are at
[github.com/gettori/tori](https://github.com/gettori/tori).

## Install

```sh
brew install --cask gettori/tap/tori
```

The fully qualified name is the whole setup: it taps this repository and
installs in one command. Homebrew asks you to confirm trust the first time.

Updates come the usual way:

```sh
brew upgrade --cask tori
```

Alpha builds are unsigned, so macOS would otherwise refuse the first launch.
The cask clears the quarantine flag for you. After a manual download from the
[releases page](https://github.com/gettori/tori/releases) you have to do it
yourself:

```sh
xattr -cr /Applications/Tori.app
```
