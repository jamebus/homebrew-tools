class MarklassianCli < Formula
  desc "Command-line wrapper for marklassian"
  homepage "https://github.com/jamebus/marklassian-cli"
  url "https://github.com/jamebus/marklassian-cli/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "7e1cb3f6172a0dd2dc83ba988c448086562f19fc700fa36bbfbd49c40527d9c1"
  head "https://github.com/jamebus/marklassian-cli.git", branch: "main"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    output = shell_output("echo | #{bin}/marklassian").chomp
    assert_equal '{"version":1,"type":"doc","content":[]}', output
  end
end
