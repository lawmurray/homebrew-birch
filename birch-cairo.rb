class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.548.tar.gz"
  version "1.548"
  sha256 "dcaf964232b76b9cb7d20cd2c49d8cf3950b89177dbe861b55a91e9e63782c44"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.548"
  depends_on "cairo"
  depends_on "libbirch" => "1.548"

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
