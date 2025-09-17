class Dt < Formula
  desc "Short and helpful dev utils"
  homepage "https://github.com/thetinygoat/dt"
  url "https://github.com/thetinygoat/dt/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "145a20e1438787b2f3713e159e08f94e90aacaf33929050136a71506d64e54f4"
  license ""

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/dt --help")
  end
end
