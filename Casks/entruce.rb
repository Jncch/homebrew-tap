cask "entruce" do
  version "1.2.0"
  sha256 "2b7f57d9ebeb89fdef92f29130fdb2d14c32137ed019bb161a5129a449a7628c"

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
