cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-48"
  sha256 arm:   "642c15fe96cb53da7ebad8f36467a2ab5f375366906bfb7f6f2110d6e301bbf4",
         intel: "c655a800148773f5aff2083c3ec5384055687ba8104e53b8bd1ec0b922f58735"

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
