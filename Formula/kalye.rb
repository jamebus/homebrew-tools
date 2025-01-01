class Kalye < Formula
  desc "Quickly find your IP address"
  homepage "https://github.com/jamebus/kalye"
  url "https://github.com/jamebus/kalye/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "d0b98403d5da09de71005208a1980e26e5b2e2f36f7d68436ee4847a53d8685a"
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
