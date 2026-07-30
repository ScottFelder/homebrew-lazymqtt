class Lazymqtt < Formula
  desc "Fast terminal UI MQTT client, inspired by MQTT Explorer"
  homepage "https://github.com/ScottFelder/lazymqtt"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.1/lazymqtt-aarch64-apple-darwin.tar.gz"
      sha256 "37465791f9ebb16cbff9ebff2e0112bb7117ca0d5d552ec0a7c219cae1eec2b8"
    end
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.1/lazymqtt-x86_64-apple-darwin.tar.gz"
      sha256 "42f81bd48d3111c3fe68ac126598eeb15443fdca5a0ad24804b449ee0ab1cb44"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.1/lazymqtt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fdde59502309c9189a4a448c5feded5e18ebace32b3c5dde9eabfc512121b8ec"
    end
  end

  def install
    bin.install "lazymqtt"
  end

  test do
    assert_match "lazymqtt #{version}", shell_output("#{bin}/lazymqtt --version")
  end
end
