cask "whisper-native" do
  version "0.1.1"
  sha256 "b2d51289505d96622f3b2ecac63494c6177fd576834baa81d3ad3f1dba016a28"

  url "https://github.com/Binary-Gap/whisper-native/releases/download/v#{version}/WhisperNative.dmg"
  name "WhisperNative"
  desc "Menu-bar dictation for macOS"
  homepage "https://github.com/Binary-Gap/whisper-native"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "WhisperNative.app"

  uninstall launchctl: "io.binarygap.whisper-server",
            quit:       "io.binarygap.whisper-native"

  zap trash: [
    "~/Library/Application Support/whisper-native",
    "~/Library/Application Support/FluidAudio",
    "~/Library/Logs/whisper-native",
    "~/Library/LaunchAgents/io.binarygap.whisper-server.plist",
    "~/Library/Preferences/io.binarygap.whisper-native.plist",
  ]
end
