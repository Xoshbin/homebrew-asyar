cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-47"
  sha256 arm:   "2429b4505a4f5982d393ebbd4c71420b8ed4ed035936b2ffa30fd63db679772d",
         intel: "4671c1ee5a383bac391bed2d7a664f97f004640ddee8304d000b3d1810494226"

  url "https://github.com/Xoshbin/asyar/releases/download/v#{version}/asyar_#{version}_#{arch}.dmg"
  name "Asyar"
  desc "Extensible launcher and productivity toolbox"
  homepage "https://asyar.org/"

  auto_updates true
  depends_on macos: :ventura

  app "asyar.app"

  zap trash: [
    "~/Library/Application Support/org.asyar.app",
    "~/Library/Caches/org.asyar.app",
    "~/Library/HTTPStorages/org.asyar.app",
    "~/Library/Preferences/org.asyar.app.plist",
    "~/Library/Saved Application State/org.asyar.app.savedState",
    "~/Library/WebKit/org.asyar.app",
  ]
end
