cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1017.0-alpha"
  sha256 arm:   "bfd841ba5d6d3a1dc27f50adee2cdc045f08b687481e365c861871254084e391",
         intel: "9b2f907192a0c37d97787ecbf731b96e728f636dfd4d30de28620153e2789672"

  url "https://github.com/gettori/tori/releases/download/v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
