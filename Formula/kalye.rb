class Kalye < Formula
  desc "Quickly find your IP address"
  homepage "https://github.com/jamebus/kalye"
  url "https://github.com/jamebus/kalye/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "6cf6f5f296021fb5b0c0f0c90f1c9892a67547cbb9a4fea7d7a99797a11d5699"
  head "https://github.com/jamebus/kalye.git", branch: "main"

  depends_on "gum"
  depends_on "jq"
  uses_from_macos "curl"

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    assert_match "IP address: ", shell_output("#{bin}/kalye")
  end
end
