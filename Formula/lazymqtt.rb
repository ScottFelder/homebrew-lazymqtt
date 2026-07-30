class Lazymqtt < Formula
  desc "Fast terminal UI MQTT client, inspired by MQTT Explorer"
  homepage "https://github.com/ScottFelder/lazymqtt"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.1/lazymqtt-aarch64-apple-darwin.tar.gz"
      sha256 "12a7d4942a33e66f6dfded883ceba0f1f6a55a6094533bfa42fc848298c3a6d8"
    end
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.1/lazymqtt-x86_64-apple-darwin.tar.gz"
      sha256 "64f33110ac1fdf196279938601f2a47848a56b0451d740e8134bac7410227fe5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.1/lazymqtt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25ec33a83f66a391c54d3521055aefe7e214d8d7de25c16312723d4bc79a9e0b"
    end
  end

  def install
    bin.install "lazymqtt"
  end

  test do
    assert_match "lazymqtt #{version}", shell_output("#{bin}/lazymqtt --version")
  end
end
