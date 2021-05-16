class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.532.tar.gz"
  version "1.532"
  sha256 "e522219a31085d0aa07b86a69204773e61e42d7380b524ebc8ac0e758e7b1fc8"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.532"
  depends_on "libbirch" => "1.532"
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
