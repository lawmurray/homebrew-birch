class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.102"
  sha256 "b78592907ba4e62751c741fdd91a63ddb19580437f870d17bbff1ab648c30784"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.102"
  depends_on "cairo"
  depends_on "libbirch" => "1.102"

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
