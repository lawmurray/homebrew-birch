class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.23"
  sha256 "00817c6526ab79acaae36dd3ab5ad5e4d8aa69e32b783738f0cda1fe5b6af992"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.23"
  depends_on "cairo"
  depends_on "libbirch" => "1.23"

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
