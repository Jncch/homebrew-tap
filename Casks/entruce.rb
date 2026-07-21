cask "entruce" do
  version "1.3.0"
  sha256 "3546aa097b552762c7bd8a0549a4ba095c7810f453a55a8f958741a1cb71e6ad"

  url "https://github.com/Jncch/Entruce/releases/download/v#{version}/Entruce-#{version}.zip"
  name "Entruce"
  desc "Menu bar utility that unifies Enter-key behavior across chat and AI apps"
  homepage "https://github.com/Jncch/Entruce"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Entruce.app"

  zap trash: [
    "~/Library/Preferences/dev.entruce.Entruce.plist",
  ]
end
