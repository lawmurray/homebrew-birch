class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.190"
  sha256 "998312bbff28c0d49f345c3d5cfe13576e987d145b55a8e69e0d310a4c6644c9"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.190"
  depends_on "cairo"
  depends_on "libbirch" => "0.190"

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
