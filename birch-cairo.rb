class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.486.tar.gz"
  version "1.486"
  sha256 "562326760f390e7e57a7f0b5c02ce588b56104f2f733b3cc53f65e9dd5021d05"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.486"
  depends_on "cairo"
  depends_on "libbirch" => "1.486"

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
