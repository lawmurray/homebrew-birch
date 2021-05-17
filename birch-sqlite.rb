class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.538.tar.gz"
  version "1.538"
  sha256 "bb80da230f705aecf1b5bc1d9ecf6ce5a4f6b16fe605cc4f2d7c25906fc1df15"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.538"
  depends_on "libbirch" => "1.538"
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
