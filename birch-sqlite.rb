class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.288.tar.gz"
  version "1.288"
  sha256 "e5b2a1ee8d57b75f7ff56ac56cdfa7b80d1c9fec360475b00f7d1335dd1703b5"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.288"
  depends_on "libbirch" => "1.288"
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
