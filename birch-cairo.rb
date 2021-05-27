class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.574.tar.gz"
  version "1.574"
  sha256 "b1cdf800ac93f2bb83f323c17c141502885037acb79fd08ff4ba35588c6ec3f5"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.574"
  depends_on "cairo"
  depends_on "libbirch" => "1.574"

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
