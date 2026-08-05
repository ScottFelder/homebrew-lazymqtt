class Lazymqtt < Formula
  desc "Fast terminal UI MQTT client, inspired by MQTT Explorer"
  homepage "https://github.com/ScottFelder/lazymqtt"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.3/lazymqtt-aarch64-apple-darwin.tar.gz"
      sha256 "262870be67323156a7a6d4815f27737493eb8c1e27097ca95efb119085f9a309"
    end
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.3/lazymqtt-x86_64-apple-darwin.tar.gz"
      sha256 "317a7a42e4493db4fd0a22f6f9d0e24cae510cd5f2515a57ca25060aa4f93a36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.3/lazymqtt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4bea782ef001e45ca8ac1061c20c0ef0eccb65443612707801bd9e39c5e6dec5"
    end
  end

  def install
    bin.install "lazymqtt"
  end

  test do
    assert_match "lazymqtt #{version}", shell_output("#{bin}/lazymqtt --version")
  end
end
