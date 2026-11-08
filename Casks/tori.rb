cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1108.0-beta"
  sha256 arm:   "7712cb6dde30f4b052269436afa11d4334af0cee8bbafd1e0369bff9865d83cb",
         intel: "ba41b4d85a5a578e080854d5d09262811f9201b88d643298a14b59f39ee8be3a"

  url "https://github.com/gettori/tori/releases/download/macos-v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
