class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.62"
  sha256 "e590058893bcd09d3737ee2def93daca7a8035a63104762e1cdc9a747dd6aebf"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.62"
  depends_on "cairo"
  depends_on "libbirch" => "1.62"

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
