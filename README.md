# Binary-Gap Homebrew Tap

Homebrew casks for [Binary-Gap](https://github.com/Binary-Gap) macOS apps.

## Install

```sh
brew install --cask binary-gap/tap/spotlightning
```

Or tap first, then install by short name:

```sh
brew tap binary-gap/tap
brew install --cask spotlightning
```

## Update

```sh
brew upgrade --cask spotlightning
```

## Uninstall

```sh
brew uninstall --cask spotlightning          # remove the app
brew uninstall --zap --cask spotlightning    # also remove config + caches
```

## Casks

- [`spotlightning`](Casks/spotlightning.rb) — macOS Spotlight-style app launcher ([repo](https://github.com/Binary-Gap/spotlightning))

Casks are bumped automatically on each app release (a script computes the version +
sha256 from the published build and pushes here). Do not hand-edit files in `Casks/`.
