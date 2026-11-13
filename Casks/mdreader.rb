cask "mdreader" do
  version "0.1.0"
  sha256 "4a897424ba6214409e69db0f3850acb7ce40d9a719ba242b41d8a4af0a415b72"

  url "https://github.com/Binary-Gap/mdreader/releases/download/v#{version}/MDReader.zip"
  name "MDReader"
  desc "Native markdown reader with vim-style keys and a warm theme"
  homepage "https://github.com/Binary-Gap/mdreader"

  depends_on macos: :tahoe

  app "MDReader.app"

  zap trash: [
    "~/.config/mdreader",
    "~/Library/Preferences/com.binarygap.mdreader.plist",
    "~/Library/Saved Application State/com.binarygap.mdreader.savedState",
  ]
end
