class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.566.tar.gz"
  version "1.566"
  sha256 "f9ecf9bcfe3be084b91cc3bf834a68da89b6d30bbc01cfc2903cd5e553b226f4"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.566"
  depends_on "cairo"
  depends_on "libbirch" => "1.566"

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
