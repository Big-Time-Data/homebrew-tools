class BigTimerCli < Formula
  desc "Command-line client for the BigTimer team server"
  homepage "https://github.com/Big-Time-Data/big-timer-releases"
  version "1.0.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "e1902fa5b56f25ce7c9ce1b02b76950d9ba78e2d1642daec2acb5ef17e653110"
    end
    on_intel do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "0d3679efd2e5a20843ab1a794b781c2097bbd76cca5cae9671514547c8b90ca0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_linux_arm64.tar.gz"
      sha256 "d72c4f4276dccbf4f19fedc3dc92b8e445c1bfc6bb9a77efa4601b4128f42d95"
    end
    on_intel do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_linux_amd64.tar.gz"
      sha256 "84aacfbca7899ff2114432922d983e737f3897550bdffa1ab4f048dc88837fb1"
    end
  end

  def install
    bin.install "big-timer-cli"
  end

  test do
    system "#{bin}/big-timer-cli", "version"
  end
end
