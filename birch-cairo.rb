class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.597.tar.gz"
  version "1.597"
  sha256 "e1f517c2e9a508e14336edf2281362992ee54d64551b268f7f39558843de2163"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.597"
  depends_on "cairo"
  depends_on "libbirch" => "1.597"

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
