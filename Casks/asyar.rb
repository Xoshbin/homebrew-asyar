cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-44"
  sha256 arm:   "ad92324e83a997afef599a933033093e1ab8d353454bccbd8b05ce11c89a8a80",
         intel: "392945f24a0ec3d3f73c95d725757608e2d579290afdc5f74b4925f65925629b"

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
