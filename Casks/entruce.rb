cask "entruce" do
  version "1.1.0"
  sha256 "fcb1563221f80781a9a9fccefd1d3ee9306aca0af61e09f30c11452472b3f829"

  url "https://github.com/Jncch/Entruce/releases/download/v#{version}/Entruce-#{version}.zip"
  name "Entruce"
  desc "Menu bar utility that unifies Enter-key behavior across chat and AI apps"
  homepage "https://github.com/Jncch/Entruce"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Entruce.app"

  zap trash: [
    "~/Library/Preferences/dev.entruce.Entruce.plist",
  ]
end
