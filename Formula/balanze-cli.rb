class BalanzeCli < Formula
  desc "Consolidated personal AI usage tracking for Claude and Codex"
  homepage "https://github.com/Oszkar/balanze"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Oszkar/balanze/releases/download/v0.5.1/balanze-cli-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "afb419954023422c41c553c9b68e12c03da5a63536b08915bc50c3b7db756e52"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Oszkar/balanze/releases/download/v0.5.1/balanze-cli-v0.5.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d2075af2ede7eb32cdf10b0e19ea444eb18283384a4d261ce7308941ff8feae5"
    end
  end

  def install
    bin.install "balanze-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/balanze-cli --version")
  end
end
