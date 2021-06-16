class Libbirch < Formula
  desc "C++ library for dynamic memory management with lazy deep copy semantics"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/libbirch-1.610.tar.gz"
  version "1.610"
  sha256 "621ff6d2f5e83eb61194a86e8b17f0dbe1a16e1276523da9de2fc3a60cca6d20"
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
