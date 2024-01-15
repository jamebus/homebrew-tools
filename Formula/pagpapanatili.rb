class Pagpapanatili < Formula
  desc "Backup tooling based on restic and resticprofile"
  homepage "https://github.com/jamebus/pagpapanatili"
  url "https://github.com/jamebus/pagpapanatili/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "7a8ef36864e10cf1b66448b69df05ebd96c182f0189d6e80dc0133988cf4b511"
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
