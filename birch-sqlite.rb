class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.598.tar.gz"
  version "1.598"
  sha256 "09b413d26f369a93e1e55a859c5bb312cc7075ca6db1da855240786936d712e3"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.598"
  depends_on "libbirch" => "1.598"
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
