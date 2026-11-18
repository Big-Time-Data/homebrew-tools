class BigTimerCli < Formula
  desc "Command-line client for the BigTimer team server"
  homepage "https://github.com/Big-Time-Data/big-timer-releases"
  version "1.0.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "793b1443705291d78dec28cf136b502b292572407f36447f1da9c8b58a1e7b30"
    end
    on_intel do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "c65ddcd6188c479c5cd6c4c22c63ee8fc54e53055fe2d572f752de67a3b7ea15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_linux_arm64.tar.gz"
      sha256 "d3ce2edaa9d661c9970a90389fd5a2026c7d575052f16a74b637ad30d88d8c89"
    end
    on_intel do
      url "https://github.com/Big-Time-Data/big-timer-releases/releases/download/cli-v#{version}/big-timer-cli_#{version}_linux_amd64.tar.gz"
      sha256 "d9d451d5848e2d9865ff69ae4a8051391a8d2f6fe40471378704460b56ac3232"
    end
  end

  def install
    bin.install "big-timer-cli"
  end

  test do
    system "#{bin}/big-timer-cli", "version"
  end
end
