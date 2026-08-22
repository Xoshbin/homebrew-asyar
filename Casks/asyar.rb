cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-43"
  sha256 arm:   "6840a81f0c6f6912a49bb7052e6bda0e101a6c612ceeab18ead3de1790697178",
         intel: "434def9efb1d720421c033cc7656d5d46d2382f23781ca0c97054506a52368ff"

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
