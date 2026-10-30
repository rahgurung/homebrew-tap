# Template for the cask in rahgurung/homebrew-tap; the Release workflow fills in version and sha256.
cask "displaydeck" do
  version "1.6"
  sha256 "115ce47c8d222cf628abe84857170f71f027ff77c857eb457600f83b7e3e582a"

  url "https://github.com/rahgurung/DisplayDeck/releases/download/v#{version}/DisplayDeck-#{version}.dmg"
  name "DisplayDeck"
  desc "Control external monitor brightness, contrast and volume from the menu bar"
  homepage "https://displaydeck.rahulgurung.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "DisplayDeck.app"

  uninstall quit: "com.rahulgurung.DisplayDeck"

  zap trash: "~/Library/Preferences/com.rahulgurung.DisplayDeck.plist"
end
