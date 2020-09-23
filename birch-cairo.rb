class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.199"
  sha256 "4d3c82807c0907328eebb1d4bc477aafe217db5bae37a9f7614d4aa5422f2d59"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.199"
  depends_on "cairo"
  depends_on "libbirch" => "0.199"

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
