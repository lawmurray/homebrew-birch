class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.567.tar.gz"
  version "1.567"
  sha256 "fd10996c032e6822b8fe69dc2693fc0f5a070343f698270a507ed78eb2763ebe"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.567"
  depends_on "libbirch" => "1.567"
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
