class Pagpapanatili < Formula
  desc "Backup tooling based on restic and resticprofile"
  homepage "https://github.com/jamebus/pagpapanatili"
  url "https://github.com/jamebus/pagpapanatili/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "813097624f3eec15c04dd60e2d009185a3c8478622d81d4f291f037d8f094282"
  head "https://github.com/jamebus/pagpapanatili.git", branch: "main"

  depends_on "awscli"
  depends_on "gum"
  depends_on "restic"
  depends_on "resticprofile"
  depends_on "yq"
  depends_on "jamebus/tools/ayusin" => :optional

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    assert_match " exec resticprofile --dry-run", shell_output("#{bin}/pag -n")
  end
end
