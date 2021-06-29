class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.630.tar.gz"
  version "1.630"
  sha256 "5b79aacf6301c11bd380d3cadf7fd6b2b5c3a8d1efbf3048aa6ca4cf4241d59f"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.630"
  depends_on "cairo"
  depends_on "libbirch" => "1.630"

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
