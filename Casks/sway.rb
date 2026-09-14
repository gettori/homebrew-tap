cask "sway" do
  version "26.914.2-alpha"
  sha256 "13f9a4a54163a1389f25234454c39ea9876d1c430c76d9424ae1ccac8cbc8743"

  url "https://github.com/skarif2/sway-releases/releases/download/v#{version}/Sway_#{version}_universal.dmg"
  name "Sway"
  desc "Dev workflow manager: session tree + Claude terminal + editor"
  homepage "https://github.com/skarif2/sway-releases"

  app "Sway.app"

  # Homebrew 6 removed --no-quarantine, and the app is unsigned, so without
  # this Gatekeeper reports it as damaged. Legacy postflight blocks still run
  # in third-party taps; drop this once builds are signed and notarized.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Sway.app"]
  end
end
