class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.610.tar.gz"
  version "1.610"
  sha256 "5908295205f31127a4bd94d861455d9e1a496b6b56243c2ff83c29bb643def9d"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.610"
  depends_on "libbirch" => "1.610"
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
