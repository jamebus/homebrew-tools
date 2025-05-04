class Kalye < Formula
  desc "Quickly find your IP address"
  homepage "https://github.com/jamebus/kalye"
  url "https://github.com/jamebus/kalye/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0b03783ece74065c388e25f7c116426ab76eb21bcb9c64a8102a1788b9c12461"
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
