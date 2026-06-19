cask "spotlightning" do
  version "0.0.1"
  sha256 "52497ff8269c171bd1534691c5fc7a2b3d126f4f245acf2ae49fbedf28720317"

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
