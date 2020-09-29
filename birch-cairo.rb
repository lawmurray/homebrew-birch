class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.19"
  sha256 "7e094cfe99f475a38bd76ae90cea3c7a1fb6a67788cf8da18ac6d9824a16dfe1"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.19"
  depends_on "cairo"
  depends_on "libbirch" => "1.19"

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
