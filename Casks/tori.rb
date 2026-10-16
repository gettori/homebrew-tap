cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1016.0-alpha"
  sha256 arm:   "6fe1b38cb37b80f545f943c6b82d74b823f1b9382f8cb4e748393fb2d03aef76",
         intel: "e32456a81092680e7fd1abd235c3f32c6f34afe13e56a000e22368952a26ecce"

  url "https://github.com/gettori/tori/releases/download/v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
