class Ayusin < Formula
  desc "Automated housekeeping tasks"
  homepage "https://github.com/jamebus/ayusin"
  url "https://github.com/jamebus/ayusin/archive/v2.2.0.tar.gz"
  sha256 "692a990e0fb060aabfd5a41354d2c254230de52f3d2887c09b047309b3ca4551"
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
