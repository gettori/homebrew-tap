cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1117.0-beta"
  sha256 arm:   "9128041ad2c008788ecf9928dd82a2cdf3f13b2009da1d9f8d7d9773b98b97dd",
         intel: "12c9d6630d9a4f2fa4399786a43c9c24464a91b7d356707f21fe069d75947683"

  url "https://github.com/gettori/tori/releases/download/macos-v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
