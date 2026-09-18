# Tori's Homebrew tap

The cask for [Tori](https://github.com/gettori/releases), a dev workflow
manager: session tree, agent terminal and editor in one macOS app.

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
[Releases page](https://github.com/gettori/releases/releases) you have to do it
yourself:

```sh
xattr -cr /Applications/Tori.app
```
