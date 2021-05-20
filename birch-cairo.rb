class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.539.tar.gz"
  version "1.539"
  sha256 "62608aa091ef0104f57abf3bb0e1b136eb57f8c7a8271c5999c9b78a9ebfd437"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.539"
  depends_on "cairo"
  depends_on "libbirch" => "1.539"

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
