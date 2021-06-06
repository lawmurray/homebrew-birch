class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.605.tar.gz"
  version "1.605"
  sha256 "9f72a29917da94ba03ee0187af57e684ba27657dc07ae8e1609a3dc661bf7ffe"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.605"
  depends_on "libbirch" => "1.605"
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
