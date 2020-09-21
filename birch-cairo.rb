class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.195"
  sha256 "e15d5bb78e80ad1b75c0ebca73932edd92abdae75734f910f85e87adbdc55c23"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.195"
  depends_on "cairo"
  depends_on "libbirch" => "0.195"

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
