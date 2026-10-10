cask "tori" do
  version "26.1010.0-alpha"
  sha256 "7209f5ec816a5ce5e1e45b5e1ea41601842fded8685be4fb6245800b89a49b1d"

  url "https://github.com/gettori/tori/releases/download/v#{version}/Tori_#{version}_universal.dmg"
  name "Tori"
  desc "Cockpit for the coding agents you already run"
  homepage "https://gettori.app"

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
