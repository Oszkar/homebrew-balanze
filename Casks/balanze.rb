cask "balanze" do
  version "0.5.1"
  sha256 "db5419594a95fd2b3847c8885fea5fd957439cd771f2ef7a15b68ca28eb846c5"

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
