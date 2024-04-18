class Xkcp < Formula
  desc "Extended Keccak Code Package"
  homepage "https://github.com/XKCP/XKCP"
  license "NOASSERTION"
  head "https://github.com/hadielyakhni/XKCP.git", branch: "master"

  def install
    system "make", "generic64/libXKCP.a"
    lib.install "bin/generic64/libXKCP.a"
    include.install "bin/generic64/libXKCP.a.headers"
  end

  test do
    # TODO: add tests - for now it's a dummy failing test
    system "false"
  end
end
