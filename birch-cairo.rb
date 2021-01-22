class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.107"
  sha256 "fd646e4a63022cbe9f96f49c259aa70596a3912721ecad036ab5c2cb90971849"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.107"
  depends_on "cairo"
  depends_on "libbirch" => "1.107"

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
