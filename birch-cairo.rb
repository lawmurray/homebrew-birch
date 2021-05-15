class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.525.tar.gz"
  version "1.525"
  sha256 "5e384754a4b7472ebb9e105568701db8703a969c73483fba0a16ec046f323d34"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.525"
  depends_on "cairo"
  depends_on "libbirch" => "1.525"

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
