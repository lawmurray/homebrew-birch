class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.556.tar.gz"
  version "1.556"
  sha256 "edcee42b92769e3c23e9513258ccddb08a822954fb7938b30caafc12460039d1"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.556"
  depends_on "cairo"
  depends_on "libbirch" => "1.556"

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
