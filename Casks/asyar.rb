cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2-4"
  sha256 arm:   "126cfc6f9274a644061cd5e92c95703a30da57aa37c7e19b076686c81a7c974c",
         intel: "fe20f94a984be8fec8c489537d79385a997d1e0a5f2976788eb64d857ab90a90"

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
