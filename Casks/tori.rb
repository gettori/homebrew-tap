cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1109.0-beta"
  sha256 arm:   "1b0800f5d50d6c6933a84557ada4011738043ad93b480ee54899a9b2bc735526",
         intel: "9f58c38be63be038d8c1c14159f96de39cbd3a3b962c3599d65a792f135578bd"

  url "https://github.com/gettori/tori/releases/download/macos-v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
