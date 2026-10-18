# Template for the cask in rahgurung/homebrew-tap; the Release workflow fills in version and sha256.
cask "displaydeck" do
  version "1.1"
  sha256 "0d33cf48f22d32789e5f7db287eae04ae3ce5e09c40fa25f95bfab3125aa8e97"

  url "https://github.com/rahgurung/DisplayDeck/releases/download/v#{version}/DisplayDeck-#{version}.dmg"
  name "DisplayDeck"
  desc "Control external monitor brightness, contrast and volume from the menu bar"
  homepage "https://displaydeck.rahulgurung.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "DisplayDeck.app"

  uninstall quit: "com.rahulgurung.DisplayDeck"

  zap trash: "~/Library/Preferences/com.rahulgurung.DisplayDeck.plist"
end
