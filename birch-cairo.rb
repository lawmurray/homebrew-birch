class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.562.tar.gz"
  version "1.562"
  sha256 "7776fb42469a350a270b2bdc195d9d4564d04754b4018e238d66f217c93fcca5"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.562"
  depends_on "cairo"
  depends_on "libbirch" => "1.562"

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
