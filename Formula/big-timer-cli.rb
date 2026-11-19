class BigTimerCli < Formula
  desc "Command-line client for the BigTimer team server"
  homepage "https://github.com/Big-Time-Data/big-timer-releases"
  version "1.0.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "21d9f991d59bb2e66b537c2f5ec69bb52c4f05adbe1ac7217b0d349500d72f96"
    end
    on_intel do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "ba9882ebde92d79128103e50351fccb137d153f377aef21ad9dcf4aa24fca1d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_linux_arm64.tar.gz"
      sha256 "39f8a7f4d54ce387e0d98c0da861e4b15ce2821961c9df63b362ee4ff3816086"
    end
    on_intel do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_linux_amd64.tar.gz"
      sha256 "d2a8c750683e60d2e76151cd893594504c36f2f712e7a41b86d471ac9b92dda1"
    end
  end

  def install
    bin.install "big-timer-cli"
  end

  test do
    system "#{bin}/big-timer-cli", "version"
  end
end
