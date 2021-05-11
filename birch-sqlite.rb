class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.518.tar.gz"
  version "1.518"
  sha256 "674725c68a3494b51a1f22d8bce1611b94107298f5c7e6fb084b3ce4ca86ba6c"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.518"
  depends_on "libbirch" => "1.518"
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
