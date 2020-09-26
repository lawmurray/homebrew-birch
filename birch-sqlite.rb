class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.9"
  sha256 "a10bd5aa3a0a7701e4d81d0bc93bc6ef98bc70c083471de15ace85dbea8b22de"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.9"
  depends_on "libbirch" => "1.9"
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
