class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.292.tar.gz"
  version "1.292"
  sha256 "2f3fbab55207a122763797dba9d0ab68a529f17800feab3d36ed3dedb40e0252"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.292"
  depends_on "cairo"
  depends_on "libbirch" => "1.292"

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
