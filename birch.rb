class Birch < Formula
  desc "Bayesian inference for programmatic models"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-1.560.tar.gz"
  version "1.560"
  sha256 "f0444b8b2b6c999899e77fe3f2d96b360e65867c113b18c12610884f4ebfdb7c"
  license "Apache-2.0"
  depends_on "bison" => :build
  depends_on "flex" => :build
  depends_on "autoconf"
  depends_on "automake"
  depends_on "binutils"
  depends_on "jemalloc"
  depends_on "boost"
  depends_on "libtool"
  depends_on "libyaml"
  depends_on "birch-standard" => :recommended

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "true"
  end
end
