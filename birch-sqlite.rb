class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.627.tar.gz"
  version "1.627"
  sha256 "d5925ef75233467b1711d768896f905597c99eef31289c9a174c0ef22c0e0dc3"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.627"
  depends_on "libbirch" => "1.627"
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
