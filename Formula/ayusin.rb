class Ayusin < Formula
  desc "Automated housekeeping tasks"
  homepage "https://github.com/jamebus/ayusin"
  url "https://github.com/jamebus/ayusin/archive/refs/tags/v4.0.1.tar.gz"
  sha256 "552ae6e6b7842a999fc6fe0b1e13beda32c3cbc2ed43c95810dd8b2631f62e7b"
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
