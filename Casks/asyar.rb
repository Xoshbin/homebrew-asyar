cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1-51"
  sha256 arm:   "5092a996b5b90b0de24a8c657255c2e587a463a292bbe75b1fb3a7af546d8aa6",
         intel: "9c5160f767192adf3ec900ab18a42bbed0dc58c1444dc46d260cf6301ed206c7"

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
