class Kalye < Formula
  desc "Quickly find your IP address"
  homepage "https://github.com/jamebus/kalye"
  url "https://github.com/jamebus/kalye/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "2a82050febbb93a58483a6c1774a93da0eaaaf4682d303fcf0621819b043ef74"
  head "https://github.com/jamebus/kalye.git", branch: "main"

  depends_on "gum"
  depends_on "jq"
  uses_from_macos "curl"

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    assert_match "IP address:", shell_output(bin/"kalye")
  end
end
