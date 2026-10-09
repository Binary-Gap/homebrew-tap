cask "whisper-native" do
  version "0.3.0"
  sha256 "5562933f20137211cee6121457391e569b08beb503b555a9a7451a42e9588898"

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
