class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.629.tar.gz"
  version "1.629"
  sha256 "b5c68dd8db543ec919aed9133dfbebfa71387d4cd6284f6f810b4f165ff50e4a"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.629"
  depends_on "libbirch" => "1.629"
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
