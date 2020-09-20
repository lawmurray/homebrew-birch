class Birch < Formula
  desc "Bayesian inference for programmatic models"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-unversioned.tar.gz"
  version "0.187"
  sha256 "c285587b9ec35e3921792acb9120987d0e99acc1a8cd9a7261248c1cce793e7b"
  license "Apache-2.0"
  depends_on "bison" => :build
  depends_on "flex" => :build
  depends_on "autoconf"
  depends_on "automake"
  depends_on "boost"
  depends_on "libtool"
  depends_on "libyaml"
  depends_on "birch-cairo" => :recommended
  depends_on "birch-sqlite" => :recommended
  depends_on "birch-standard" => :recommended
  depends_on "libbirch" => :recommended

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
