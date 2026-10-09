cask "balanze" do
  version "0.5.3"
  sha256 "941f2898ff4264bf241e295bfed90d46d9d1fb92be7c655061a6dcf44ef6e36a"

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
