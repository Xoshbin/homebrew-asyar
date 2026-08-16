cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-42"
  sha256 arm:   "18fd92f02070ff460900e2bd0ebfd0375032c41eeb16b9250dca0b217057d694",
         intel: "20f80947be158c14f77ff3fadcf24502deefc878785fc0661b4c4c89f7c5be53"

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
