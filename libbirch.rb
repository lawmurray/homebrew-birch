class Libbirch < Formula
  desc "C++ library for dynamic memory management with lazy deep copy semantics"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/libbirch-1.624.tar.gz"
  version "1.624"
  sha256 "94ceee078c4cd298c386fd7be972d4a866fc15797d8dfee58c54e5b67ab7ae85"
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
