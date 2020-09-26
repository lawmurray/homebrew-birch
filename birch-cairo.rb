class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.16"
  sha256 "07d3466866cba2823048e1d15805d37665a98275d0a8411926ef5b1925f4682a"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.16"
  depends_on "cairo"
  depends_on "libbirch" => "1.16"

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
