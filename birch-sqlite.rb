class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.489.tar.gz"
  version "1.489"
  sha256 "72fcc860bfd2f73b0056fb1656bf7b838e99619e0dd8d55a6376fd440ba152e5"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.489"
  depends_on "libbirch" => "1.489"
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
