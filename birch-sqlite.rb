class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.517.tar.gz"
  version "1.517"
  sha256 "8edee61366c5bcdb0ec4d8f961f3fc67c0c2d8764af0efb612fe5372e5ac6480"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.517"
  depends_on "libbirch" => "1.517"
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
