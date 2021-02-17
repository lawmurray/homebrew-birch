class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.239"
  sha256 "b82311565a4618d381e3bcf3768a3128f425151404b43c7ab6dfacc1faa20fa8"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.239"
  depends_on "libbirch" => "1.239"
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
