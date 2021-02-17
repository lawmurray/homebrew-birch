class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.241"
  sha256 "4267fcd810cb004ffb39fd9665ea99fe7a8ec32e394ee38bdb1f8af232cc5b2a"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.241"
  depends_on "libbirch" => "1.241"
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
