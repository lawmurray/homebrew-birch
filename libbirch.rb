class Libbirch < Formula
  desc "C++ library for dynamic memory management with lazy deep copy semantics"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/libbirch-unversioned.tar.gz"
  version "1.236"
  sha256 "a239c8df074b0dddd8e863f5f0bc9ea96c5b3933cedbd98d1098ffea4b1606c0"
  license "Apache-2.0"
  depends_on "eigen"
  depends_on "libomp"

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
