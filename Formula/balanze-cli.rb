class BalanzeCli < Formula
  desc "Consolidated personal AI usage tracking for Claude and Codex"
  homepage "https://github.com/Oszkar/balanze"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Oszkar/balanze/releases/download/v0.5.2/balanze-cli-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "541fa9109015a55998d12fe021c49355e2cb584a6bc65421c0be07db45f10ea9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Oszkar/balanze/releases/download/v0.5.2/balanze-cli-v0.5.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1eb2466834f5d5e3d34548dca67a86f131838e61c93c0ba838db0f7f8d835f34"
    end
  end

  def install
    bin.install "balanze-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/balanze-cli --version")
  end
end
