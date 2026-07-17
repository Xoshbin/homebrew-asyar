cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-39"
  sha256 arm:   "6226fdb7d3938ae34657c1a3494fa19bd9d41e9bec02bf83bbe57c814cf9b8ef",
         intel: "ff55684343831a441de57a1296431e26b2c4ecc3219c93f6c721cae89b263509"

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
