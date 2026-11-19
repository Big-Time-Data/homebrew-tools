cask "big-timer" do
  version "0.2.4"
  sha256 "1849e98da39f2060ea8b5a9da78b1d2d086f54b4039a4ef79bd189ddda999003"

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
