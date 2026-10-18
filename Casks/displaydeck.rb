# Template for the cask in rahgurung/homebrew-tap; the Release workflow fills in version and sha256.
cask "displaydeck" do
  version "1.1.1"
  sha256 "c077bf618b5e5dc1157583076321e7d0dd376e14b7cb0ebc59a55f31024ad7e7"

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
