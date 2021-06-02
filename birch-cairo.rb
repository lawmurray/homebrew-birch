class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.595.tar.gz"
  version "1.595"
  sha256 "4d527538df596a0cf9d0d1b406ed9973204b86b572222664838125f6b6e5ab39"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.595"
  depends_on "cairo"
  depends_on "libbirch" => "1.595"

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
