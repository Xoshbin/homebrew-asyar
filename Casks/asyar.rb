cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-50"
  sha256 arm:   "670228b4169ebcf685183a5354e5f9075086aa2c8d207c418b571e8622184749",
         intel: "bfcb4602abfd5f710d61bd57a9bf3fefab38be509978f9613bdf9ae843b5574a"

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
