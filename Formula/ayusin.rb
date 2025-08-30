class Ayusin < Formula
  desc "Automated housekeeping tasks"
  homepage "https://github.com/jamebus/ayusin"
  url "https://github.com/jamebus/ayusin/archive/refs/tags/v4.2.0.tar.gz"
  sha256 "3a4e8f8533f45f7d5813e5edfe8a9830527e3b295cf29f721904e7698cce2292"
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
