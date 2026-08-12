class Lazymqtt < Formula
  desc "Fast terminal UI MQTT client, inspired by MQTT Explorer"
  homepage "https://github.com/ScottFelder/lazymqtt"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.4/lazymqtt-aarch64-apple-darwin.tar.gz"
      sha256 "de1296be977c57e5bcc6d8d67f512edb9b1576b26ded79c315f06225aaa15a29"
    end
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.4/lazymqtt-x86_64-apple-darwin.tar.gz"
      sha256 "ad1695fd508b9b1ff1941a5b10ac1ec98c6137799009ff757461534b6b5fca40"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.4/lazymqtt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8280dca29ca29ce8ca5a657310b989d0bb282debc218793f9d049a818b24e0cd"
    end
  end

  def install
    bin.install "lazymqtt"
  end

  test do
    assert_match "lazymqtt #{version}", shell_output("#{bin}/lazymqtt --version")
  end
end
