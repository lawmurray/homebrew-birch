class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.538.tar.gz"
  version "1.538"
  sha256 "5ba021cc3633966d088d7df2af200c450531c854f88f32fdbcc12a49c88471ae"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.538"
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
