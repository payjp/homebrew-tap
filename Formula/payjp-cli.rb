class PayjpCli < Formula
  desc "PAY.JP CLI tool"
  homepage "https://github.com/payjp/payjp-cli"
  license "MIT"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/payjp/payjp-cli/releases/download/v0.1.2/payjp-cli-darwin-arm64.tar.gz"
      sha256 "a50af873fa8cfe6fa7897f51f4641364062237732dd14c7128b400d4b2aa42b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/payjp/payjp-cli/releases/download/v0.1.2/payjp-cli-linux-amd64.tar.gz"
      sha256 "19c7229169544e7859c8e145ddb1279784b87c468a0a79770f3691bf8a689154"
    end
    on_arm do
      url "https://github.com/payjp/payjp-cli/releases/download/v0.1.2/payjp-cli-linux-arm64.tar.gz"
      sha256 "9552dff93563da689bf065829e2419d56c48a1b7a762035cc1183308d91376ee"
    end
  end

  def install
    bin.install "payjp-cli"
  end

  test do
    system bin/"payjp-cli", "--version"
  end
end
