class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.303.tar.gz"
  version "1.303"
  sha256 "af233d0749df7bd3a07c1095ac6aac0d373e7ece77f115b8320c331a12d7dfba"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.303"
  depends_on "libbirch" => "1.303"
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
