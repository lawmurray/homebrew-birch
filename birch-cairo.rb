class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.521.tar.gz"
  version "1.521"
  sha256 "505910e33d1d3fd37b99314db149bf0108d0b5ac7971ec3015435c8125203053"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.521"
  depends_on "cairo"
  depends_on "libbirch" => "1.521"

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
