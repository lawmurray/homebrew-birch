class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.555.tar.gz"
  version "1.555"
  sha256 "465bb9311036041224688a1437d03b84d6df143bc62453f3ea57c63bac081149"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.555"
  depends_on "libbirch" => "1.555"
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
