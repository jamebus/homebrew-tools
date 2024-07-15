class Pagpapanatili < Formula
  desc "Backup tooling based on restic and resticprofile"
  homepage "https://github.com/jamebus/pagpapanatili"
  url "https://github.com/jamebus/pagpapanatili/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "31a104101b8508af4dc453e3c88768d4dd0439b56965142be8088ac9f80e0c71"
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
