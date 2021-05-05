class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.485.tar.gz"
  version "1.485"
  sha256 "9d45df5ddd32458ad79d831a50dc7d98886410dcfc5b55a7aaab90d1be287d8b"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.485"
  depends_on "libbirch" => "1.485"
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
