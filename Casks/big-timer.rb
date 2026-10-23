cask "big-timer" do
  version "0.1.4"
  sha256 "d455e67f2c1942d49b188c1686013a4cd74adf99f28d6fe51fce0d71254af410"

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
