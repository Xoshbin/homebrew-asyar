cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-38"
  sha256 arm:   "a03030e4717e966dd682b40e26f6b12b6e643b1d383022c145137dc014f5e566",
         intel: "778a81c0c038a9242c818aff9b5f23eec8127de9b43b5f101f4d68d6d6527932"

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
