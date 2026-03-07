class MarklassianCli < Formula
  desc "Command-line wrapper for marklassian"
  homepage "https://github.com/jamebus/marklassian-cli"
  url "https://github.com/jamebus/marklassian-cli/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "c197afb89be44df0ceff13db7fc8909e0c3a318fd5d22dc4b92dbd7f82aaa437"
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
