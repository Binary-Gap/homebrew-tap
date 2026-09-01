cask "spotlightning" do
  version "0.0.2"
  sha256 "62bbc0a1396cda69598353c854f63ee770af939f4167defd82b0fd7b5db4bb11"

  url "https://github.com/Binary-Gap/spotlightning/releases/download/v#{version}/SpotLightning.zip"
  name "SpotLightning"
  desc "macOS Spotlight-style app launcher"
  homepage "https://github.com/Binary-Gap/spotlightning"

  depends_on macos: :tahoe

  app "SpotLightning.app"

  zap trash: [
    "~/.config/spotlightning",
    "~/Library/Application Support/SpotLightning",
    "~/Library/Preferences/io.binarygap.spotlightning.SpotLightning.plist",
  ]
end
