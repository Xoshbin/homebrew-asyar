cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-45"
  sha256 arm:   "863e4f5e7ec9fbe2c28ce926c4376b8ac1cd81d8a432a943d6d5d1a6f49d4db4",
         intel: "16694a2c3f565455d9e47407a5b0c4933a3c86fa094ebf0b6973b7e3f92fcd2a"

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
