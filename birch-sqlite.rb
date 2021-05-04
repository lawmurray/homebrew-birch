class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.483.tar.gz"
  version "1.483"
  sha256 "b4ae6c96484ed5de65ba15ef51e9cfa63e6b171d2a6cbca68e4ca18436bdcbed"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.483"
  depends_on "libbirch" => "1.483"
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
