class Libbirch < Formula
  desc "C++ library for dynamic memory management with lazy deep copy semantics"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/libbirch-1.621.tar.gz"
  version "1.621"
  sha256 "87f2a35e2c2a47c692c36e8fb973b544c846bf475316db9a202e8ed85a860719"
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
