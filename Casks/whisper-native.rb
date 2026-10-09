cask "whisper-native" do
  version "0.3.1"
  sha256 "a33ec8666b82b49872783725e1de48575425e41afd26823baeb48228338e9fe7"

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
