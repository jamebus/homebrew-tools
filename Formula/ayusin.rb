class Ayusin < Formula
  desc "Automated housekeeping tasks"
  homepage "https://github.com/jamebus/ayusin"
  url "https://github.com/jamebus/ayusin/archive/v0.5.0.tar.gz"
  sha256 "a57d190c340f29bfd9603ac4df27a5efef2c688f5ca998afedbecae1f4064cc1"
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
