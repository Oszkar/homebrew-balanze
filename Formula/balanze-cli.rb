class BalanzeCli < Formula
  desc "Consolidated personal AI usage tracking for Claude and Codex"
  homepage "https://github.com/Oszkar/balanze"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Oszkar/balanze/releases/download/v0.0.0/balanze-cli-v0.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Oszkar/balanze/releases/download/v0.0.0/balanze-cli-v0.0.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "balanze-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/balanze-cli --version")
  end
end
