cask "balanze" do
  version "0.5.4"
  sha256 "b3fbc21f0a93f78dc21b3c6aed13435955721db729312406d058dac2edacc29d"

  url "https://github.com/Oszkar/balanze/releases/download/v#{version}/Balanze_#{version}_aarch64.dmg"
  name "Balanze"
  desc "Tray app for consolidated personal AI usage tracking"
  homepage "https://github.com/Oszkar/balanze"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Balanze.app"

  zap trash: [
    "~/Library/Application Support/me.oszkar.balanze",
    "~/Library/Caches/me.oszkar.balanze",
    "~/Library/Preferences/me.oszkar.balanze.plist",
    "~/Library/Saved Application State/me.oszkar.balanze.savedState",
  ]
end
