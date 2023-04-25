class Ayusin < Formula
  desc "Automated housekeeping tasks"
  homepage "https://github.com/jamebus/ayusin"
  url "https://github.com/jamebus/ayusin/archive/v1.0.0.tar.gz"
  sha256 "72555e4ca67523d786390b9c1344637f295ff47bc1b03ca30d47e1ddb44aafeb"
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
