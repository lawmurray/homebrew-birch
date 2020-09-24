class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.1"
  sha256 "7b48425339f343ba6903449c99507896f5c4fd7504e17a8ca7da52816c3d0b78"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.1"
  depends_on "cairo"
  depends_on "libbirch" => "1.1"

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
