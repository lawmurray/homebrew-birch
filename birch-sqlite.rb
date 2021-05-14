class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.521.tar.gz"
  version "1.521"
  sha256 "7e6423208f5d6f97140bf296040fec4785fc4b6ec0cf2bddb9c0a41ae38b145e"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.521"
  depends_on "libbirch" => "1.521"
  depends_on "sqlite"

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
