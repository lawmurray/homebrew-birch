class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.180"
  sha256 "97dc75c8151757a19147033103c3efdeab0c0bab5dc515735cccc13f2d581b81"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.180"
  depends_on "cairo"
  depends_on "libbirch" => "0.180"

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
