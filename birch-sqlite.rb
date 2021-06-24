class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.621.tar.gz"
  version "1.621"
  sha256 "985832534202dca83d0cf97ad0051ce713132ce03acd77d71d91d4e916ce1bd2"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.621"
  depends_on "libbirch" => "1.621"
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
