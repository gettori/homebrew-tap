cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1110.0-beta"
  sha256 arm:   "2aa6c065447ac3eae6e4a6325327712ad1a35df98db2cff11babbdf818655534",
         intel: "5ea7ec69c661a01339d61fc3c7b58c3d7852c3dab844985a3d7f14ec46125694"

  url "https://github.com/gettori/tori/releases/download/macos-v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
