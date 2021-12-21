class Ayusin < Formula
  desc "Automated housekeeping tasks"
  homepage "https://github.com/jamebus/ayusin"
  url "https://github.com/jamebus/ayusin/archive/v0.1.0.tar.gz"
  sha256 "b0673be9f58333b3d0ebcdc643b95e54c7775988e0f77a41bdc9b51ddd0911db"
  head "https://github.com/jamebus/ayusin.git"

  def install
    bin.install "ayusin"
  end

  # test do
  # end
end
