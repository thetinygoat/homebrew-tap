cask "flowterm" do
  version "0.52.0"
  sha256 "d0388c61b1492f94293d19512c877fc146ed7e4bf43bb52a88b2e46778e03856"

  url "https://github.com/thetinygoat/flow/releases/download/v#{version}/Flow-#{version}.dmg"
  name "Flow"
  desc "Calmer terminal for everyday work"
  homepage "https://getflowterm.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Flow.app"

  zap trash: [
    "~/.config/flow",
    "~/Library/Application Support/flow",
    "~/Library/Caches/dev.thetinygoat.flow",
    "~/Library/HTTPStorages/dev.thetinygoat.flow",
    "~/Library/HTTPStorages/dev.thetinygoat.flow.binarycookies",
    "~/Library/Preferences/dev.thetinygoat.flow.plist",
    "~/Library/Saved Application State/dev.thetinygoat.flow.savedState",
  ]
end
