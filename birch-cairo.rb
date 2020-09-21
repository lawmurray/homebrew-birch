class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.192"
  sha256 "834a4146fe80c11f4c576128a1f2b12e8f83ead62e44cafa822ed565443d56a7"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.192"
  depends_on "cairo"
  depends_on "libbirch" => "0.192"

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
