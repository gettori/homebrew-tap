cask "tori" do
  version "26.927.1-alpha"
  sha256 "10001655e4c18c818d3db9cd11c6f42a4827bcdee1fc255537f357491b50d189"

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
