class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.483.tar.gz"
  version "1.483"
  sha256 "a054a74fed8d1484c21ca7f14942b021c9313423804b5a84ba667399f6af0431"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.483"
  depends_on "cairo"
  depends_on "libbirch" => "1.483"

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
