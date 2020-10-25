class Birch < Formula
  desc "Bayesian inference for programmatic models"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-unversioned.tar.gz"
  version "1.38"
  sha256 "9cb895311da07328b6a888fb2afc8b865f987d00460d063741a14ef619b28bfc"
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
