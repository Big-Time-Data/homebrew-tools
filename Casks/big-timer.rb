cask "big-timer" do
  version "0.2.5"
  sha256 "e9cfe4dc41bab47182842bff9e7e6d9da7f4655ff76834571fc7ab4582025b47"

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
