cask "flowterm" do
  version "0.51.0"
  sha256 "a672219707a5d6c7af068984f01cd90de731b07831b3d1aa69c4090e937dee76"

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
