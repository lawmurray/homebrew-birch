class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.530.tar.gz"
  version "1.530"
  sha256 "72f92454fe921bac51d2ff4aa7f116fdcd9f09512c95c288a9d37ecb0b836b11"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.530"
  depends_on "libbirch" => "1.530"
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
