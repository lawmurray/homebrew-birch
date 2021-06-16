class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.610.tar.gz"
  version "1.610"
  sha256 "6331cdb9c06831bf24c306c9d51eb0570c85555b777c2f85712cb5b09ba2d79b"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.610"
  depends_on "cairo"
  depends_on "libbirch" => "1.610"

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
