class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.292.tar.gz"
  version "1.292"
  sha256 "b4c2eb9dc5b127697f73af7e322de4629b02e75b61aa049804fbd6b9e3ecec0a"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.292"
  depends_on "libbirch" => "1.292"
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
