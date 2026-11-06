cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1106.0-beta"
  sha256 arm:   "d004a403e5acad01517d76c7665e72d2b6a28537c3387f3832414462dd904a94",
         intel: "c01caba9c4a36b251ce161c27dee2fc6fa934b0bfa85cd41a36bc9d47bef101e"

  url "https://github.com/gettori/tori/releases/download/macos-v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
