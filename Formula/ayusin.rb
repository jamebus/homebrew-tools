class Ayusin < Formula
  desc "Automated housekeeping tasks"
  homepage "https://github.com/jamebus/ayusin"
  url "https://github.com/jamebus/ayusin/archive/v0.4.1.tar.gz"
  sha256 "bb7e42cca32d5d2c4edad306062da2deaa2e12389d37d44094aa74e7af72b929"
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
