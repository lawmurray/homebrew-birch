class Libbirch < Formula
  desc "C++ library for dynamic memory management with lazy deep copy semantics"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/libbirch-unversioned.tar.gz"
  version "0.199"
  sha256 "d9785a0d1a11ed978326927b427bb8f5d5401a59a8700002b60f76e553a8e5b3"
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
