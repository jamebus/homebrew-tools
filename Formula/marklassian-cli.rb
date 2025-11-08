class MarklassianCli < Formula
  desc "Command-line wrapper for marklassian"
  homepage "https://github.com/jamebus/marklassian-cli"
  url "https://github.com/jamebus/marklassian-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "eb548de7a0c03a217970f4f380793571d860e6bd97194483772fc3f8f076b8ad"
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
