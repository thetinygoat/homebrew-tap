cask "flowterm" do
  version "0.5.0"
  sha256 "adae6f34b2fa4491f6b0deeb5e481b63e9c0d351db87011ab325010c753d6d27"

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
