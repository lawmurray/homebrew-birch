class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.246"
  sha256 "c5f45b989cfcc8df3ef0bf4795a3ab7369e8c4b7282866e41a8094dd56bcd78e"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.246"
  depends_on "cairo"
  depends_on "libbirch" => "1.246"

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
