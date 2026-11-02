cask "big-timer" do
  version "0.2.2"
  sha256 "2b87ce9cc75ede587538d66d10ae44eae153150a2d46257339df43988e1502ec"

  url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/v#{version}/BigTimer-#{version}.dmg"
  name "Big-Timer"
  desc "Menu-bar time tracker that syncs with Toggl"
  homepage "https://github.com/Big-Time-Data/big-timer-releases"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "BigTimer.app"

  zap trash: [
    "~/Library/Application Support/BigTimer",
    "~/Library/Caches/io.bigtimedata.bigtimer",
    "~/Library/HTTPStorages/io.bigtimedata.bigtimer",
    "~/Library/Preferences/io.bigtimedata.bigtimer.plist",
  ]
end
