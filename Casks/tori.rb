cask "tori" do
  arch arm: "aarch64", intel: "x64"

  version "26.1021.0-alpha"
  sha256 arm:   "7bed6d72f26df5dd5858ae50190ad96d3233447011730e5cbcbdf90412e06e74",
         intel: "5768e4cc511e38b6506a2ccb79b33cb8889b84047f55613c1af85bb83bc348ba"

  url "https://github.com/gettori/tori/releases/download/v#{version}/Tori_#{version}_#{arch}.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"
end
