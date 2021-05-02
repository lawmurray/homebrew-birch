class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.477.tar.gz"
  version "1.477"
  sha256 "a883e6e6522d1106ccaf9d76cfc3468f874a10809217a23c5b7a1e10322717e0"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.477"
  depends_on "libbirch" => "1.477"
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
