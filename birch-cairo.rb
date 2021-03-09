class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.299.tar.gz"
  version "1.299"
  sha256 "c7ef19cb0c8bc86da4e0f847484c3017effa5ada7d25d2603f751a7b7cc0ae53"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.299"
  depends_on "cairo"
  depends_on "libbirch" => "1.299"

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
