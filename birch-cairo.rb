class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.518.tar.gz"
  version "1.518"
  sha256 "01978d7bce655ef8bea0728da87f87908c73f0fb6b368502c59f4eb9ea549e73"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.518"
  depends_on "cairo"
  depends_on "libbirch" => "1.518"

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
