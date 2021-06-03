class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.601.tar.gz"
  version "1.601"
  sha256 "e8bccd511726d629f7a243094cfcd061316d6ebb80b6bac576f83630a9059734"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.601"
  depends_on "cairo"
  depends_on "libbirch" => "1.601"

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
