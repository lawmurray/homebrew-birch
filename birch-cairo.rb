class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.17"
  sha256 "7c34d15b2fe8c008d6c1875746c1f77bfc3cda558caa7cf10393358327cf799c"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.17"
  depends_on "cairo"
  depends_on "libbirch" => "1.17"

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
