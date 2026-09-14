cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-46"
  sha256 arm:   "a1b151cf18ea1e8c6f6d7b3cfd0a24c194390fa965205c4cf48ec77c05716c6c",
         intel: "59313f6fe14b9edb5a63793c207e47e3343dbb7980e8922bb2319a4f39908744"

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
