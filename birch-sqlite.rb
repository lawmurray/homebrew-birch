class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "v1"
  sha256 "23d1cfb9a3a010a4f2e3ebfed6190bdcf00dd3beb371e720b096b1b304852a29"
  license "Apache-2.0"
  depends_on "birch-standard" => "v1"
  depends_on "libbirch" => "v1"
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
