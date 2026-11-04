cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1104.0-beta"
  sha256 arm:   "65b393fbf2612e2c3301df5a62b4865ca628e9c57e8e0604d6fbc7737e85e71b",
         intel: "150de290b1903840679e740ab7d2ede1139d211c2bd96b218ba242bc392955d9"

  url "https://github.com/gettori/tori/releases/download/macos-v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
