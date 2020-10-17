class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.23"
  sha256 "2f2753f9d9ac423a051a62967f31b15400c2d7c1e1ce315fab6d70c74071ace1"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.23"
  depends_on "libbirch" => "1.23"
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
