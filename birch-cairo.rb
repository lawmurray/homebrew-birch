class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.598.tar.gz"
  version "1.598"
  sha256 "1f8219a4ec46dec933c1f6ce5f8ca4b892c10d0768b4c4af92f0ee0dee4108ce"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.598"
  depends_on "cairo"
  depends_on "libbirch" => "1.598"

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
