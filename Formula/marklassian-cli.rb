class MarklassianCli < Formula
  desc "Command-line wrapper for marklassian"
  homepage "https://github.com/jamebus/marklassian-cli"
  url "https://github.com/jamebus/marklassian-cli/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "5bf3280e5c103e5058bd081ac58b07868d483b4b5c4c78c505e5a01aa4e2389d"
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
