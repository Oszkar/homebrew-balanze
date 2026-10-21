class BalanzeCli < Formula
  desc "Consolidated personal AI usage tracking for Claude and Codex"
  homepage "https://github.com/Oszkar/balanze"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Oszkar/balanze/releases/download/v0.5.4/balanze-cli-v0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "00bbd365d2272af97850b6597026177ee1d903ffb4597859d738733ab67db9cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Oszkar/balanze/releases/download/v0.5.4/balanze-cli-v0.5.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ec699485dc579b256b0ff46dd7107e3981ccdcd8dbb6448afb705fabf709d8ab"
    end
  end

  def install
    bin.install "balanze-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/balanze-cli --version")
  end
end
