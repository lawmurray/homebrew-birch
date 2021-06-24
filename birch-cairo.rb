class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.621.tar.gz"
  version "1.621"
  sha256 "7eb1052fe43f5a5988e6c0479925a8a7c511701425accb069612ef95948f4684"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.621"
  depends_on "cairo"
  depends_on "libbirch" => "1.621"

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
