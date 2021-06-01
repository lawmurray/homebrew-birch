class Libbirch < Formula
  desc "C++ library for dynamic memory management with lazy deep copy semantics"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/libbirch-1.574.tar.gz"
  version "1.574"
  sha256 "07bad05a70bb2a1ebb275d18f6baa7707c96f80bef796feb8122a9be34c8cf95"
  license "Apache-2.0"
  depends_on "eigen"
  depends_on "libomp"

  def install
    system "./configure", "--enable-debug",
                          "--enable-release",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}",

                          # see internal docs of birch driver program for
                          # these OpenMP arguments
                          "--disable-openmp",
                          "CPPFLAGS=\"-Xpreprocessor -fopenmp\""
    system "make", "install"
  end

  test do
    system "true"
  end
end
