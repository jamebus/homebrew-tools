class Pagpapanatili < Formula
  desc "Backup tooling based on restic and resticprofile"
  homepage "https://github.com/jamebus/pagpapanatili"
  url "https://github.com/jamebus/pagpapanatili/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "fde460290d3bbef685e79c7ba00958771a0226017b8a169a34d5d7695c82a69c"
  revision 1
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
    assert_match " exec resticprofile --dry-run", shell_output("#{bin}/pag -n")
  end
end
