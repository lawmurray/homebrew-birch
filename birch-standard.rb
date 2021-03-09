class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.299.tar.gz"
  version "1.299"
  sha256 "1d948850b00d4d8890ccc6cc1dcc90fe600aa8941948e815a2a2491d1e6cf1d4"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.299"
  depends_on "libyaml"

  def install
    system "./configure", "--enable-debug",
                          "--enable-release",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "true"
  end
end
