class BrewToyFormula < Formula
  desc "First toy formula for Homebrew"
  homepage "https://github.com/hadielyakhni/brew_toy_formula"
  url "https://github.com/hadielyakhni/brew_toy_formula/archive/refs/tags/1.0.1.tar.gz"
  sha256 "f397d0faaec80b7a5956811a1735567c89e392d01ae971b11a3ea87fe0d70c64"
  license "MIT"

  def install
    system "make"
    bin.install "hadi-hello-world"
  end

  test do
    assert_equal "Hello, World!\n", shell_output("#{bin}/hadi-hello-world")
  end
end
