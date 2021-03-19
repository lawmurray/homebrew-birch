class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.301.tar.gz"
  version "1.301"
  sha256 "6362570bd3b66a0c26c8a2c15240b6b3149bc8acf4ecae1cd19e9b70425a2b98"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.301"
  depends_on "libbirch" => "1.301"
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
