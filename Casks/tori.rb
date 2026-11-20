cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1120.0-beta"
  sha256 arm:   "7fa241889b82c09c12ba6606cdbf150a62d6bcd0969ffab5b47f53002d574b7c",
         intel: "2f20e8b082c0a3a9ce516f6f09cb725ca1455899902ccbbd12a4bd84fec60e23"

  url "https://github.com/gettori/tori/releases/download/macos-v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
