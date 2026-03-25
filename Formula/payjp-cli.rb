class PayjpCli < Formula
  desc "PAY.JP CLI tool"
  homepage "https://github.com/payjp/payjp-cli"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/payjp/payjp-cli/releases/download/v0.1.1/payjp-cli-darwin-arm64.tar.gz"
      sha256 "6e87155d6c33c9f21d315cd9938a88251696add79315e73b0a49e0917f557959"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/payjp/payjp-cli/releases/download/v0.1.1/payjp-cli-linux-amd64.tar.gz"
      sha256 "964c84886bf74f6cb279eb3c04292038c5cb580a4b30dcd5d481a673edf0e922"
    end
    on_arm do
      url "https://github.com/payjp/payjp-cli/releases/download/v0.1.1/payjp-cli-linux-arm64.tar.gz"
      sha256 "f035af9a6942fdb0d0754fb5e87bc720e113261cde1c33728f69a5de795d205b"
    end
  end

  def install
    bin.install "payjp-cli"
  end

  test do
    system bin/"payjp-cli", "--version"
  end
end
