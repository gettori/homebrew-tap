cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1029.0-beta"
  sha256 arm:   "63915363125ea973bbd4a11f36e677de8f11a66dd0605cda3e854dff0047199b",
         intel: "000eab739461e864f80ce51e707726147521a77730367029715af1a14cca7036"

  url "https://github.com/gettori/tori/releases/download/v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
