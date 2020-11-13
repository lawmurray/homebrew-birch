class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.66"
  sha256 "3eedff7dbd35626cdb051c4b51a08b778c6664f1cf62f3ba3e0429d101ff01fc"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.66"
  depends_on "cairo"
  depends_on "libbirch" => "1.66"

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
