cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-53"
  sha256 arm:   "6c678c5821155ae5d00bbc1314c70ef119aa39f20af5d1a603e3d525385498a3",
         intel: "2914d65608431f3cc2876c58db7c55428e8c0c311249a0b36c3c74ff09997bfa"

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
