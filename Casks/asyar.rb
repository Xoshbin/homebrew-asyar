cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2-3"
  sha256 arm:   "e053ee24c89220e03f34e2359791dbd340f3633f1e42f349860abd6719c2545e",
         intel: "cc0f918bd970bd17c1858932fbb1b6136f6300c58f455b7a305c9eb1d1c10e42"

  url "https://github.com/Xoshbin/asyar/releases/download/v#{version}/asyar_#{version}_#{arch}.dmg"
  name "Asyar"
  desc "Extensible launcher and productivity toolbox"
  homepage "https://asyar.org/"

  auto_updates true
  depends_on macos: :ventura

  app "asyar.app"

  zap trash: [
    "~/Library/Application Support/org.asyar",
    "~/Library/Application Support/org.asyar.app",
    "~/Library/Caches/org.asyar",
    "~/Library/Caches/org.asyar.app",
    "~/Library/HTTPStorages/org.asyar",
    "~/Library/HTTPStorages/org.asyar.app",
    "~/Library/Preferences/org.asyar.plist",
    "~/Library/Preferences/org.asyar.app.plist",
    "~/Library/Saved Application State/org.asyar.savedState",
    "~/Library/Saved Application State/org.asyar.app.savedState",
    "~/Library/WebKit/org.asyar",
    "~/Library/WebKit/org.asyar.app",
  ]
end
