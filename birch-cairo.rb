class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.527.tar.gz"
  version "1.527"
  sha256 "ba2ad3c8bfbde6d3413a2154e4d57cd229ee594b01c91046644797b2ba2cf4fd"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.527"
  depends_on "cairo"
  depends_on "libbirch" => "1.527"

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
