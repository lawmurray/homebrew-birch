class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.37"
  sha256 "ec0b7db9ebc3bb0b5fd21e901786ac28c14c5cd73ea0f86b141a864f9d0183c4"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.37"
  depends_on "cairo"
  depends_on "libbirch" => "1.37"

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
