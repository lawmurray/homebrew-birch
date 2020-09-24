class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.3"
  sha256 "22f50652c265ecd726da2603570a46aa9efe1272d0d7c6b41b8336cef98b461f"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.3"
  depends_on "cairo"
  depends_on "libbirch" => "1.3"

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
