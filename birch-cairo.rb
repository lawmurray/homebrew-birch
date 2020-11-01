class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.43"
  sha256 "3e14e5bc49383539127aafcb4bcb4b44cc84fa3604e2dbccc4025c70fee1545d"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.43"
  depends_on "cairo"
  depends_on "libbirch" => "1.43"

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
