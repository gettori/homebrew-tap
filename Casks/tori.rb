cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1022.0-alpha"
  sha256 arm:   "446b1cbd9106de97ca72dd5bc40f3ce2607676a45dfa8b4060161d770d5c2dba",
         intel: "f51c9e58456798ade3c8d8d66d3547b90c6fcd28eb19517ac07e91787326fb34"

  url "https://github.com/gettori/tori/releases/download/v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
