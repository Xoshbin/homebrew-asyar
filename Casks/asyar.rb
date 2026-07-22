cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-40"
  sha256 arm:   "8631e4dd66ef2069a40c40415e34f3fdd34cf5554a34c9b10492a2f2c93d8fe6",
         intel: "2f570fc2a8dc708c5f1fa493ff6f974cd2a929d4849be3af873993e3e3329db0"

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
