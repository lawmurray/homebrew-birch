class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.236"
  sha256 "bc96582a9ad1895d037d47ad863423bd13d9e32e9b5d690aaec131511f3c8816"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.236"
  depends_on "libbirch" => "1.236"
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
