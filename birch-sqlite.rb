class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.36"
  sha256 "0d293284736b724d8ab5465216621c91ab5c028dbe7ae30782aba7cbe392f5ee"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.36"
  depends_on "libbirch" => "1.36"
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
