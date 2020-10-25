class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.38"
  sha256 "7e7701f0f251b0cf4c3f2e4ebd7422e0cd7097be83092ea5ee2f83ba2ee12fe4"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.38"
  depends_on "cairo"
  depends_on "libbirch" => "1.38"

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
