class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.563.tar.gz"
  version "1.563"
  sha256 "dbc3d97f0557fa0f6e535b763b67b9b54343371bfb74db2a798abec168f79c76"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.563"
  depends_on "libbirch" => "1.563"
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
