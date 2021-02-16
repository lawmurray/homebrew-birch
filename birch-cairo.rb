class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.229"
  sha256 "ff7b41c3333a6799c6859873ebcad40ebab8e9078c96fae25759b56cf4164010"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.229"
  depends_on "cairo"
  depends_on "libbirch" => "1.229"

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
