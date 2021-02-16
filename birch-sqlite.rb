class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.229"
  sha256 "8058f91a97871d019e0f37d5e5550c173108fdbc8a4df4c2ac19dc52a9f24e14"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.229"
  depends_on "libbirch" => "1.229"
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
