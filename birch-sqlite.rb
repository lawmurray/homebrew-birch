class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.77"
  sha256 "b8c96ddaed5d06976181c374ee262c4fe49bbde444eadb4f047bc9a0074f7e7d"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.77"
  depends_on "libbirch" => "1.77"
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
