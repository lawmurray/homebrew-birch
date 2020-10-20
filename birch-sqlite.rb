class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.26"
  sha256 "b78d559778fddebf3d8e67f27175e4366859fd3e9dc99151a2cf1f9ba7214e48"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.26"
  depends_on "libbirch" => "1.26"
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
