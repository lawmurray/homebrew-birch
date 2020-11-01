class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.42"
  sha256 "3a050947a1dcde64f6b403cedb6d1e0ad0afbeda00b081ac5a6ed530fe6e9cea"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.42"
  depends_on "libbirch" => "1.42"
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
