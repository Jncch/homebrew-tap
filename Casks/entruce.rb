cask "entruce" do
  version "1.2.1"
  sha256 "bd9d0e2d19bc333f782c1bfca5a484de563766e0efe53276fce55b4f4a7bde67"

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
