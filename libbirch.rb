class Libbirch < Formula
  desc "C++ library for dynamic memory management with lazy deep copy semantics"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/libbirch-1.595.tar.gz"
  version "1.595"
  sha256 "92bcad846266d9d2a4f6a67ca70ac9527f325a2a7d035c71dc9fd49cde212c02"
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
