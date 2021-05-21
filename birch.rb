class Birch < Formula
  desc "Bayesian inference for programmatic models"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-1.544.tar.gz"
  version "1.544"
  sha256 "907ee673521f8b2cb218b6fc4b7a67a28d981271b18279196d57984b6df14d32"
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
