class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.544.tar.gz"
  version "1.544"
  sha256 "5f169385976c379206ef29ddbd3773c1e4a2105e7b6babad6ca9fc061b379925"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.544"
  depends_on "cairo"
  depends_on "libbirch" => "1.544"

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
