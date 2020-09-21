class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "0.192"
  sha256 "d3e0704548054bb5daaf8ed191131b4abb426e05c8c2b9d44ce30ef3bab0b32f"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.192"
  depends_on "libbirch" => "0.192"
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
