cask "menubar-for-hey" do
  version "0.6.5"
  sha256 "281066480dd4a1fb93db9efe66a1afa33918f20a4770ff4257af67a900d50dad"

  url "https://github.com/Soules-Studio-Ltd/ToolsForHEY-Releases/releases/download/menubar-#{version}/MenuBarForHEY-#{version}.dmg",
      verified: "github.com/Soules-Studio-Ltd/ToolsForHEY-Releases/"
  name "MenuBar for HEY"
  desc "Unofficial menu bar companion for HEY email"
  homepage "https://toolsforhey.com/menubar"

  livecheck do
    url "https://toolsforhey.com/menubar/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "MenuBar for HEY.app"

  zap trash: [
    "~/Library/Application Support/com.soulesstudio.toolsforhey.menubar",
    "~/Library/Caches/com.soulesstudio.toolsforhey.menubar",
    "~/Library/HTTPStorages/com.soulesstudio.toolsforhey.menubar",
    "~/Library/Preferences/com.soulesstudio.toolsforhey.menubar.plist",
    "~/Library/Preferences/com.soulesstudio.toolsforhey.menubar.settings.plist",
  ]
end
