class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.44"
  sha256 "351d8b43466beca535cc1de3512e1e0222c38263e5a5eb5ffe264697128f500d"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.44"
  depends_on "cairo"
  depends_on "libbirch" => "1.44"

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
