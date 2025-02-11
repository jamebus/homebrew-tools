class Ayusin < Formula
  desc "Automated housekeeping tasks"
  homepage "https://github.com/jamebus/ayusin"
  url "https://github.com/jamebus/ayusin/archive/refs/tags/v4.1.0.tar.gz"
  sha256 "6d3fb5fc1c06f775bd0531cc91b8541696f845336393eca7e649d4b430d40256"
  head "https://github.com/jamebus/ayusin.git", branch: "main"

  depends_on "debianutils"
  depends_on "fping"
  depends_on "mas"

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    assert_match " Completed: ", shell_output(bin/"ayusin -n")
  end
end
