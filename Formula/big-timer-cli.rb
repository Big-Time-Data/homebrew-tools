class BigTimerCli < Formula
  desc "Command-line client for the BigTimer team server"
  homepage "https://github.com/Big-Time-Data/big-timer-releases"
  version "1.0.13"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "86dfef51cb2e7181585b5e12cd4ba1fa0e05e89c66c63280c07d95453d998005"
    end
    on_intel do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "290f4eebdbbfe80abcf570c763ba8828ff1510a46692dacdd09a4673f5d9c3e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_linux_arm64.tar.gz"
      sha256 "82c9f4654e3d245cdf847c533c0aae5b06fb2ca9b8b13ae0e69d9ffde9832d6b"
    end
    on_intel do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_linux_amd64.tar.gz"
      sha256 "4afb1c96cda8d8fef070ff1eb8a8868d20dae5cdb14d3c88c526ab45236d3bc1"
    end
  end

  def install
    bin.install "big-timer-cli"
  end

  test do
    system "#{bin}/big-timer-cli", "version"
  end
end
