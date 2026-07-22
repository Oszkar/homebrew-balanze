cask "balanze" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/Oszkar/balanze/releases/download/v#{version}/Balanze_#{version}_aarch64.dmg"
  name "Balanze"
  desc "Tray app for consolidated personal AI usage tracking"
  homepage "https://github.com/Oszkar/balanze"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Balanze.app"

  zap trash: [
    "~/Library/Application Support/me.oszkar.balanze",
    "~/Library/Caches/me.oszkar.balanze",
    "~/Library/Preferences/me.oszkar.balanze.plist",
    "~/Library/Saved Application State/me.oszkar.balanze.savedState",
  ]
end
