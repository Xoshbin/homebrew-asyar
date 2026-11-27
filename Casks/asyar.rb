cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2-5"
  sha256 arm:   "b7243afca7fe7951a6194e02ec8aead2770788ac94c07a5152de7ed12e9f0594",
         intel: "801ef248eb204c70fbfb006937797eef91acdac1ccd5225d3da8c932e8f4a036"

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
