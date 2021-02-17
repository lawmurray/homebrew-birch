class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.238"
  sha256 "6c6b7b5bba228dbee9557dbae38e61412bbebf7481479fcf06132399af9a64b9"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.238"
  depends_on "cairo"
  depends_on "libbirch" => "1.238"

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
