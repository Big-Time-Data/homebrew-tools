cask "big-timer" do
  version "0.2.0"
  sha256 "71056248ca29d1d60bb1802aaaffbd40bb4ae532ca2dfabdcce40373f7cea7e3"

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
