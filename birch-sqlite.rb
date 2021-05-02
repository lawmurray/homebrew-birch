class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.478.tar.gz"
  version "1.478"
  sha256 "26793959ca9ee3752ea94b3a6c9c9c0ce6153e8b28c8d6f73929fb4e8079179e"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.478"
  depends_on "libbirch" => "1.478"
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
