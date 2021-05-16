class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.532.tar.gz"
  version "1.532"
  sha256 "92efa8111ac07f233f010c3a2aeefebb7dfcb48285089b8587088d0b2081651b"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.532"
  depends_on "cairo"
  depends_on "libbirch" => "1.532"

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
