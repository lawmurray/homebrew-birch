class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.261.tar.gz"
  version "1.261"
  sha256 "95614d9dbd736f091dcb3b6ffee4989fed0a19e8ef1553bd3dc6a43ecbdbe2ce"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.261"
  depends_on "cairo"
  depends_on "libbirch" => "1.261"

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
