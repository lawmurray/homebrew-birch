class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.504.tar.gz"
  version "1.504"
  sha256 "4e0272d833d3b480c67eeea2bd00190e3a22d3aab1c8c2f458c1ccbfa48e61dd"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.504"
  depends_on "cairo"
  depends_on "libbirch" => "1.504"

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
