class HadiHelloWorld < Formula
  desc "Simple C program that prints Hello, World!"
  homepage "https://github.com/hadielyakhni/brew_toy_formula"
  url "https://github.com/hadielyakhni/brew_toy_formula/archive/refs/tags/1.0.0.tar.gz"
  sha256 "842ea765e3c832e5affd9e22584d8202cf41da3bee655de092da1b391eda5b0c"

  def install
    system "make"
    bin.install "hadi-hello-world"
  end

  test do
    assert_equal "Hello, World!\n", shell_output("#{bin}/hadi-hello-world")
  end
end
