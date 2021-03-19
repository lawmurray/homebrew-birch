class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.300.tar.gz"
  version "1.300"
  sha256 "b086c02ae170b81337f04a56ddc8bf1bed0a0c4f068b6a584bb7fa1284e45909"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.300"
  depends_on "cairo"
  depends_on "libbirch" => "1.300"

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
