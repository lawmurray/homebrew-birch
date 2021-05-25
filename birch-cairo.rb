class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.554.tar.gz"
  version "1.554"
  sha256 "a3605a6d7eddde1ba1cf8bac7554110a836ab3099fd33c0ad7810b3910c6b734"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.554"
  depends_on "cairo"
  depends_on "libbirch" => "1.554"

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
