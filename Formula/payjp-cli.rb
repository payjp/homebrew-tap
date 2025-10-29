class PayjpCli < Formula
  desc "PAY.JP CLI tool"
  homepage "https://github.com/payjp/payjp-cli"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/payjp/payjp-cli/releases/download/v0.1.0/payjp-cli-darwin-arm64.tar.gz"
      sha256 "9335cb9e13b10e12fab6df369e30fd18dcd6b4289fcefae9d5e5c9cbd9461259"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/payjp/payjp-cli/releases/download/v0.1.0/payjp-cli-linux-amd64.tar.gz"
      sha256 "9ad36278345cd888dee4229ca41c6bf70633d7d852fdc3de00cc73940eca84bb"
    end
    on_arm do
      url "https://github.com/payjp/payjp-cli/releases/download/v0.1.0/payjp-cli-linux-arm64.tar.gz"
      sha256 "3125e6442e5d94342e22ab337a325e1041173678bb95e219ed6db8d14b10b907"
    end
  end

  def install
    bin.install "payjp-cli"
  end

  test do
    system bin/"payjp-cli", "--version"
  end
end
