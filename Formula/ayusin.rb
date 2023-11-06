class Ayusin < Formula
  desc "Automated housekeeping tasks"
  homepage "https://github.com/jamebus/ayusin"
  url "https://github.com/jamebus/ayusin/archive/v2.1.0.tar.gz"
  sha256 "a566ede20d8958817d7c10c96db975099ef1e32579833ed81a7e5ce0633cdfe9"
  head "https://github.com/jamebus/ayusin.git"

  depends_on "debianutils"
  depends_on "fping"
  depends_on "mas"

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    assert_match " Completed: ", shell_output("#{bin}/ayusin -n")
  end
end
