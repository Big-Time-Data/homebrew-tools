class BigTimerCli < Formula
  desc "Command-line client for the BigTimer team server"
  homepage "https://github.com/Big-Time-Data/big-timer-releases"
  version "1.0.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "4b247d4044a610008b9950042ba01e8d2fb199ffb2d8e7f424f2d7095c55466a"
    end
    on_intel do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "f2413369c8ffb825a2abd89843a405d21ab2134f6fad013188264cec328618a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_linux_arm64.tar.gz"
      sha256 "eef49f44f293c17dd1b7d10733e72ea05885c41dc40e1882fe6f5c7290e430e5"
    end
    on_intel do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_linux_amd64.tar.gz"
      sha256 "f7f302df61cb8f0068b6e17206983317ed9ce111f1d57bafa6f90975c169478f"
    end
  end

  def install
    bin.install "big-timer-cli"
  end

  test do
    system "#{bin}/big-timer-cli", "version"
  end
end
