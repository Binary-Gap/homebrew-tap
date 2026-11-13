cask "whisper-native" do
  version "0.4.3"
  sha256 "105d8a79d3fcad7573ef3fc6dbeab83a3d74f7c4335c8a755faf94ccc133120b"

  url "https://github.com/Binary-Gap/whisper-native/releases/download/v#{version}/WhisperNative.dmg"
  name "WhisperNative"
  desc "Menu-bar dictation for macOS"
  homepage "https://github.com/Binary-Gap/whisper-native"

  auto_updates true

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "WhisperNative.app"

  uninstall launchctl: "io.binarygap.whisper-server",
            quit:       "io.binarygap.whisper-native"

  zap trash: [
    "~/Library/Application Support/whisper-native",
    "~/Library/Application Support/FluidAudio",
    "~/Library/Caches/io.binarygap.whisper-native",
    "~/Library/Logs/whisper-native",
    "~/Library/LaunchAgents/io.binarygap.whisper-server.plist",
    "~/Library/Preferences/io.binarygap.whisper-native.plist",
  ]
end
