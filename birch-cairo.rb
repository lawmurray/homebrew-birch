class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.291.tar.gz"
  version "1.291"
  sha256 "43b69318e14d856e48b17b5006af676693142b1305166276ec291a12943f728b"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.291"
  depends_on "cairo"
  depends_on "libbirch" => "1.291"

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
