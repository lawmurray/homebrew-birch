class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.183"
  sha256 "129e72681c940389c1b028facb4e886e114d9b5d947fdec8c3a60b18eda13096"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.183"
  depends_on "cairo"
  depends_on "libbirch" => "0.183"

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
