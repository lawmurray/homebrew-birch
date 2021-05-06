class Libbirch < Formula
  desc "C++ library for dynamic memory management with lazy deep copy semantics"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/libbirch-1.491.tar.gz"
  version "1.491"
  sha256 "edbee27bfff9cb459250708411fd4f9d4a5c6e6525eddf162dff5a10c052dda0"
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
