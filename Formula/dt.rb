class Dt < Formula
  desc "Short and helpful dev utils"
  homepage "https://github.com/thetinygoat/dt"
  url "https://github.com/thetinygoat/dt/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "a2dec3447a4695da8e6688e9d04ee8c5df084f728dfeaf339dc9b83689a1df57"
  license ""

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/dt --help")
  end
end
