class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.243"
  sha256 "dfe9c3d90db7453b12439817cde0b91f56f924264e4fd4e040727a1ee7e4e8a0"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.243"
  depends_on "cairo"
  depends_on "libbirch" => "1.243"

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
