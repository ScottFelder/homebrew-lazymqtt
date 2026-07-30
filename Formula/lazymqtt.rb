class Lazymqtt < Formula
  desc "Fast terminal UI MQTT client, inspired by MQTT Explorer"
  homepage "https://github.com/ScottFelder/lazymqtt"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.1/lazymqtt-aarch64-apple-darwin.tar.gz"
      sha256 "b0381af5adfd488452824b6832ae28ba252be66de020e8003f7ee20830c58a33"
    end
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.1/lazymqtt-x86_64-apple-darwin.tar.gz"
      sha256 "dcb611b2b1a3f347bae28fa9a48425cdeac66eba5e8905ef44e322b365aaf465"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.1/lazymqtt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3af24bde9162242e63400cc040b538ca61002d9ef838331f28dd7066ef3f18a"
    end
  end

  def install
    bin.install "lazymqtt"
  end

  test do
    assert_match "lazymqtt #{version}", shell_output("#{bin}/lazymqtt --version")
  end
end
