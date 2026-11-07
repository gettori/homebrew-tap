cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1107.0-beta"
  sha256 arm:   "5274f5a8d2fb14d16839e7be2c506dff21b2f164b283223f049b54206e23f960",
         intel: "7def417a0edf6ec55fea066912d83420ede06717680970a673ff418e9316f073"

  url "https://github.com/gettori/tori/releases/download/macos-v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
