class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.194"
  sha256 "df94a7efc92ba1763e99d31d4df7946755a466194906cb4333c1135ad326bcdc"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.194"
  depends_on "cairo"
  depends_on "libbirch" => "0.194"

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
