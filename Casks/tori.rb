cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1112.0-beta"
  sha256 arm:   "c4f10ef817e3aa900330261609c3a95ec52692ddf8018545bf306f8d78b3fdc6",
         intel: "3811cc57503bb77ef01116f5e1449f6d836fcbc628dbf51d1b94ce0aa7d7d39c"

  url "https://github.com/gettori/tori/releases/download/macos-v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
