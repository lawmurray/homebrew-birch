class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.13"
  sha256 "e1c5a618694ee97079e6953f6cd2770b7f05e2e333b5049e47e02d831c5b7dc4"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.13"
  depends_on "libbirch" => "1.13"
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
