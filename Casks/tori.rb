cask "tori" do
  version "26.922.0-alpha"
  sha256 "fef33dd50dfcbea74f114823403ec1424edcccc76755b248297b9cfb4e7639dd"

  url "https://github.com/gettori/releases/releases/download/v#{version}/Tori_#{version}_universal.dmg"
  name "Tori"
  desc "Dev workflow manager: session tree + Claude terminal + editor"
  homepage "https://github.com/gettori/releases"

  # No version bound: the bundle sets no minimum, so older macOS is untested
  # rather than blocked, and this says only what the app really requires.
  depends_on :macos

  app "Tori.app"

  # Homebrew 6 removed --no-quarantine, and the app is unsigned, so without
  # this Gatekeeper reports it as damaged. postflight_steps rather than the
  # postflight block it replaces, which Homebrew 7 deprecates and warns about
  # on every read. Drop the whole stanza once builds are signed and notarized.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Tori.app"]
  end
end
