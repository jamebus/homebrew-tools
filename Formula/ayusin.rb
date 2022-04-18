class Ayusin < Formula
  desc "Automated housekeeping tasks"
  homepage "https://github.com/jamebus/ayusin"
  url "https://github.com/jamebus/ayusin/archive/v0.2.0.tar.gz"
  sha256 "daf56d57c0ccd139022fa46d724bc4a1f7ec287997edef029f356743e153c5d7"
  revision 1
  head "https://github.com/jamebus/ayusin.git"

  depends_on "debianutils"
  depends_on "fping"

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    assert_match " Completed: ", shell_output("#{bin}/ayusin -n")
  end
end
