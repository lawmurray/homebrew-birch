class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.291.tar.gz"
  version "1.291"
  sha256 "99d40e8dbb1b0be10fbdd19734d0de03e2dded622cc27aa3511b0a66467d6a05"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.291"
  depends_on "libbirch" => "1.291"
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
