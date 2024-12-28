class Pagpapanatili < Formula
  desc "Backup tooling based on restic and resticprofile"
  homepage "https://github.com/jamebus/pagpapanatili"
  url "https://github.com/jamebus/pagpapanatili/archive/refs/tags/v2.0.3.tar.gz"
  sha256 "41d1bfac8473de2630fe82ccafa36bfb56629d42172f2429285940cbf15d4584"
  head "https://github.com/jamebus/pagpapanatili.git", branch: "main"

  depends_on "awscli"
  depends_on "creativeprojects/tap/resticprofile"
  depends_on "gum"
  depends_on "restic"
  depends_on "yq"
  depends_on "jamebus/tools/ayusin" => :optional

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    assert_match " exec resticprofile --dry-run", shell_output(bin/"pag -n")
  end
end
