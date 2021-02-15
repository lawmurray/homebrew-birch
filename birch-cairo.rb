class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.112"
  sha256 "5d105c86cb22b4dfffcaffa5ade7b14ef1cc952465e3b6c7775ad17fb5bfd808"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.112"
  depends_on "cairo"
  depends_on "libbirch" => "1.112"

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
