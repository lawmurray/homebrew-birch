class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.477.tar.gz"
  version "1.477"
  sha256 "e97556634b168b19ce58c67f422f695d3b7a1c226cf70b5dd41e8481dd9af459"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.477"
  depends_on "cairo"
  depends_on "libbirch" => "1.477"

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
