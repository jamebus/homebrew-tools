class Kalye < Formula
  desc "Quickly find your IP address"
  homepage "https://github.com/jamebus/kalye"
  url "https://github.com/jamebus/kalye/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "565900b72db26429a0d98c5beca92376ef66b0dbbf1e64aa9f775724e24b4307"
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
