class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "0.180"
  sha256 "6c7d02c0f09da1b974c4e5aed93ab73eec4238aac93c3a3cad9ae9b5d5b4598c"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.180"
  depends_on "libbirch" => "0.180"
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
