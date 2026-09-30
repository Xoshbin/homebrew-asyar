cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-49"
  sha256 arm:   "ff3a5900066d5380891417f083433f1ffb45a019e489f5e2553d89ac06051ea4",
         intel: "816ba732294baddd6d80ab7e1336295d9498f7315e762f7621286dcc23293234"

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
