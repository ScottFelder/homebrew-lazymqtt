class Lazymqtt < Formula
  desc "Fast terminal UI MQTT client, inspired by MQTT Explorer"
  homepage "https://github.com/ScottFelder/lazymqtt"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.5/lazymqtt-aarch64-apple-darwin.tar.gz"
      sha256 "fb546fb42b1de58e3de8633cc4aadde83c8dbae997f14263fa0a768c8c267755"
    end
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.5/lazymqtt-x86_64-apple-darwin.tar.gz"
      sha256 "b87dc4cbb81ceed51f2ba680257a539a5b206f88f407f292d3db3690e8dcedb4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ScottFelder/lazymqtt/releases/download/v0.1.5/lazymqtt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d310fb595009757b412c5c9de645e098ce5dda8fbbe5ef35dcdaedad3eab8bc"
    end
  end

  def install
    bin.install "lazymqtt"
  end

  test do
    assert_match "lazymqtt #{version}", shell_output("#{bin}/lazymqtt --version")
  end
end
