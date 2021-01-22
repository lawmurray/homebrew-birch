class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.105"
  sha256 "072989a8f8b4f3593612ad27e325512fd576ea282d27d94369bda1ccc6fdaf98"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.105"
  depends_on "libbirch" => "1.105"
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
