class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.260.tar.gz"
  version "1.260"
  sha256 "5adb9fd89117f6fc367e0a8d64683c047a26056f9eab495f8f227ddf94bcdd45"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.260"
  depends_on "libyaml"

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
