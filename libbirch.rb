class Libbirch < Formula
  desc "C++ library for dynamic memory management with lazy deep copy semantics"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/libbirch-1.596.tar.gz"
  version "1.596"
  sha256 "d534204bba36a93890b2cfcd245d62b8b75dd0f92a3d6584a8f5aee2e935f82a"
  license "Apache-2.0"
  depends_on "eigen"
  depends_on "libomp"

  def install
    # see internal docs of birch driver program for explanation of OpenMP args
    ENV["CPPFLAGS"] = "-Xpreprocessor -fopenmp"
    system "./configure", "--enable-debug",
                          "--enable-release",
                          "--disable-openmp",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "true"
  end
end
