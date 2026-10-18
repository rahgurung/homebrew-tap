# Template for the cask in rahgurung/homebrew-tap; the Release workflow fills in version and sha256.
cask "displaydeck" do
  version "1.2.1"
  sha256 "8d06fd61f22187cacf0edf32111ca1aa2ab927ead57b5a027e146c584d704b91"

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
