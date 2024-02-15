class Ayusin < Formula
  desc "Automated housekeeping tasks"
  homepage "https://github.com/jamebus/ayusin"
  url "https://github.com/jamebus/ayusin/archive/refs/tags/v2.2.1.tar.gz"
  sha256 "1caf235e3ab92b1ed65741edf2752cb997c4543eeeb1efe8cbbfb902f3d71292"
  head "https://github.com/jamebus/ayusin.git", branch: "main"

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
