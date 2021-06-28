class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.627.tar.gz"
  version "1.627"
  sha256 "0567c9fa878ef9887c24d39ab934611a91422256e86b773320b1d950bdd58b5a"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.627"
  depends_on "cairo"
  depends_on "libbirch" => "1.627"

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
