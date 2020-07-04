class Awsctx < Formula
  desc "A cli tool to switch AWS profiles"
  homepage "https://github.com/dtennander/awsctx"
  url "https://github.com/dtennander/awsctx/archive/v1.3.tar.gz"
  sha256 "659184344bf4d6a7ab25737064d9a336b9bb7fdbc95fad028d84f3dbdd8c545c"

  bottle do
    cellar :any_skip_relocation
  end

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "go", "build", "-o", bin/"awsctx", "main.go"
    prefix.install_metafiles
  end

  test do
    (testpath/"awsctx").write "currentProfile: foobar"
    (testpath/"config").write "[default]"
    (testpath/"credentials").write "[default]"

    output = shell_output("#{bin}/awsctx --no-color -f #{testpath} 2>&1").chomp
    assert_equal "*foobar", output
  end
end
