class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.517.tar.gz"
  version "1.517"
  sha256 "3d3d87b39cdc1f80540c7e8a49de1fd56342bd024652516c1880a44424a69653"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.517"
  depends_on "cairo"
  depends_on "libbirch" => "1.517"

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
