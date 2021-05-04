class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.482.tar.gz"
  version "1.482"
  sha256 "1f84806351f6c9e9c00d5cb1f59369fc2fd3a77c2b12e4b993bad9fab91e0239"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.482"
  depends_on "libbirch" => "1.482"
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
