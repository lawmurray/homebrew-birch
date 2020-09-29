class Libbirch < Formula
  desc "C++ library for dynamic memory management with lazy deep copy semantics"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/libbirch-unversioned.tar.gz"
  version "1.19"
  sha256 "6704cdad5fd394262c278273794845ada215a850edf62dd70db369a322b12cb3"
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
