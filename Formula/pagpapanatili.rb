class Pagpapanatili < Formula
  desc "Backup tooling based on restic and resticprofile"
  homepage "https://github.com/jamebus/pagpapanatili"
  url "https://github.com/jamebus/pagpapanatili/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "f625ee1eb8c0583fc4459a610e0be0519e191cfd45ed24b74b7677e5b505a741"
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
