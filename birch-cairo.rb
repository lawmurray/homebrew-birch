class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.555.tar.gz"
  version "1.555"
  sha256 "aab7902031b04e22cb0aea06d12017196f1db56254a10f9dc0b5e4a3bfcc37b1"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.555"
  depends_on "cairo"
  depends_on "libbirch" => "1.555"

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
