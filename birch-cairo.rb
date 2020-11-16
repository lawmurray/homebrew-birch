class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.69"
  sha256 "1f2a4dfcf967668f7f84288e7bcb0c7126964f9f6872f1bcf1eb6620424868a4"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.69"
  depends_on "cairo"
  depends_on "libbirch" => "1.69"

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
