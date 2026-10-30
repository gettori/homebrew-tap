cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1030.0-beta"
  sha256 arm:   "91466991fcd1c80d9cf44a2e2d9e1ace4ad10361a22cb68af4df06ca63151e66",
         intel: "afbb25c9c69bca27e85dde6d2481f7c003f07c3dd90bf05ab4fe81b43486d806"

  url "https://github.com/gettori/tori/releases/download/v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
