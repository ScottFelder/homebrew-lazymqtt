class Lazymqtt < Formula
  desc "Fast terminal UI MQTT client, inspired by MQTT Explorer"
  homepage "https://github.com/ScottFelder/lazymqtt"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.2/lazymqtt-aarch64-apple-darwin.tar.gz"
      sha256 "504369f677abcd90995a1ef48a6a7e751daa83661ba8909bbaa671578738e436"
    end
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.2/lazymqtt-x86_64-apple-darwin.tar.gz"
      sha256 "0b1dadb368f1bb260cdd04ef0f66d8b60106c339e9862153d073201b2856e4bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.2/lazymqtt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f31d678a2115ba438152501de0dbd180575db1ad88ed5d48eeafd5da2ec58260"
    end
  end

  def install
    bin.install "lazymqtt"
  end

  test do
    assert_match "lazymqtt #{version}", shell_output("#{bin}/lazymqtt --version")
  end
end
