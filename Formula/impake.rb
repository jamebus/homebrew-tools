class Impake < Formula
  desc "Easy ephemeral file sharing"
  homepage "https://github.com/jamebus/impake"
  url "https://github.com/jamebus/impake/archive/v1.0.2.tar.gz"
  sha256 "fbc9ce4a065e8da4079868e322733aa6ee654db219a05098d0ba9789d17d6fb0"
  head "https://github.com/jamebus/impake.git"

  depends_on "p7zip"
  depends_on "jq"
  depends_on "jamebus/tools/realpath-osx" => :optional
  depends_on "coreutils"                  => :optional

  def install
    bin.install "impake"
  end

  def caveats
    "You'll need a realpath(1) command in your $PATH for impake to work.\n" \
    "You can install it from jamebus/tools/realpath-osx or coreutils."
  end

  test do
    (testpath/"testing").write "This is a test"
    output = shell_output("#{bin}/impake #{testpath}/testing 2>/dev/null")
    assert_match %r{URL:\s+https://\w+}, output
  end
end
