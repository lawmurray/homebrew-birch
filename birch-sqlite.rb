class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.1"
  sha256 "85fb7e846840b8afc6f9a57828f99d304aa95ed96989c8a3aa19908f0c43e447"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.1"
  depends_on "libbirch" => "1.1"
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
