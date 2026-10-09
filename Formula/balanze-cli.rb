class BalanzeCli < Formula
  desc "Consolidated personal AI usage tracking for Claude and Codex"
  homepage "https://github.com/Oszkar/balanze"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Oszkar/balanze/releases/download/v0.5.3/balanze-cli-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "8fc3208469d51b6dec449e62b61b01d67b7ef35903d893cd99e98c7132281e32"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Oszkar/balanze/releases/download/v0.5.3/balanze-cli-v0.5.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "604163f497f51f1260ee86a49ed1288d7430f141c2e79147b1825419fa390ec1"
    end
  end

  def install
    bin.install "balanze-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/balanze-cli --version")
  end
end
