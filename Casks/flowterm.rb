cask "flowterm" do
  version "0.53.0"
  sha256 "0e2dc339facc8e7c28f17867e938302ba1e24ce8f97a3b3e4d1bdb71634cb82b"

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
