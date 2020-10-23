class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.34"
  sha256 "9cde3e282565851a8b019f407a1cf26de61019194b9469ffc3c3bc160d96d649"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.34"
  depends_on "cairo"
  depends_on "libbirch" => "1.34"

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
