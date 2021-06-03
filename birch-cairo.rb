class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.602.tar.gz"
  version "1.602"
  sha256 "4d9d5ea2da676ce171d9cf0218c69d009713fe6f575382d5b2cff5564233f227"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.602"
  depends_on "cairo"
  depends_on "libbirch" => "1.602"

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
