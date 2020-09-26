class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.6"
  sha256 "2d60fb96b4e3bcaff1e45f2639399155b36b04ec9b49cc778993d8188f3181bf"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.6"
  depends_on "libbirch" => "1.6"
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
