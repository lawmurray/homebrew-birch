class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.108"
  sha256 "94e4c8084816757529f077419ea0ace3174304e127b32b0f99ffc7c633467330"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.108"
  depends_on "cairo"
  depends_on "libbirch" => "1.108"

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
