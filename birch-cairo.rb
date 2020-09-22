class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.197"
  sha256 "e83b65d814d0f8a47f536c21f9e02a8a0023cfb369f4aaca3cf64447eb662093"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.197"
  depends_on "cairo"
  depends_on "libbirch" => "0.197"

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
