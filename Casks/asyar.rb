cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-41"
  sha256 arm:   "125fe2d9f3c02e00e6468262f517c8023ec25b3a726efb772e1da9b2f2d41317",
         intel: "04483ed4bd93a02f31958517ff54f1dd8cbcab070291e153453a74aacf6d1b80"

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
