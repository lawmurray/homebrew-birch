class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.595.tar.gz"
  version "1.595"
  sha256 "6a77e4c37f2fb003bb583e8c0e8e4d325639218b370d610d97396edaf9f8f464"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.595"
  depends_on "libbirch" => "1.595"
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
