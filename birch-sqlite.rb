class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.74"
  sha256 "4acea3e7e099f862ce615faa1b21887f6ec8cc477bce838f95b2357adddb4e8b"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.74"
  depends_on "libbirch" => "1.74"
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
