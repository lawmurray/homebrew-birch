class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.8"
  sha256 "033cb68110bf08dc989508e83982e78c8fc1593f5885b9ada3cc420dfd61b2a2"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.8"
  depends_on "libbirch" => "1.8"
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
