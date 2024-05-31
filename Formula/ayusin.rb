class Ayusin < Formula
  desc "Automated housekeeping tasks"
  homepage "https://github.com/jamebus/ayusin"
  url "https://github.com/jamebus/ayusin/archive/refs/tags/v4.0.0.tar.gz"
  sha256 "8b9e7b44a143664096b2ffaca7e0143f9ecf434c2ba954f316cf27e9406cc7e6"
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
