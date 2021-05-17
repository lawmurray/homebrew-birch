class Libbirch < Formula
  desc "C++ library for dynamic memory management with lazy deep copy semantics"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/libbirch-1.538.tar.gz"
  version "1.538"
  sha256 "3ea9aa1c256fe0ec1e71872eea47b8a6bd367dc40aa1521feac52ac4e0dcb2ef"
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
