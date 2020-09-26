class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.7"
  sha256 "eeccfba6e427751d83f165cc17e4568027e1cb393bc46fff153075d4b04c5662"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.7"
  depends_on "cairo"
  depends_on "libbirch" => "1.7"

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
