class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.35"
  sha256 "fead1d8fcf4143cc4e23c1ee0ebb4c3ddbcc686771cb3da6392a1f1840bef553"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.35"
  depends_on "libbirch" => "1.35"
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
