class Pagpapanatili < Formula
  desc "Backup tooling based on restic and resticprofile"
  homepage "https://github.com/jamebus/pagpapanatili"
  url "https://github.com/jamebus/pagpapanatili/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "44439102ab9463cdc3e1a81eec698b44ca6368f91a8906cfe6c1e814b4d4bc95"
  head "https://github.com/jamebus/pagpapanatili.git", branch: "main"

  depends_on "awscli"
  depends_on "gum"
  depends_on "restic"
  depends_on "resticprofile"
  depends_on "ayusin" => :optional

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    assert_match " exec resticprofile --dry-run", shell_output("#{bin}/pag -n")
  end
end
