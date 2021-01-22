class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.107"
  sha256 "2ae4c0b3f44ff60b24f59af9c982673ba6e3f72934a391ed02cf8dc4cb082ea0"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.107"
  depends_on "libbirch" => "1.107"
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
