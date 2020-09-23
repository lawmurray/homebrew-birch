class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "0.199"
  sha256 "e9891e2956e423adeaf816b4e6a580c9a2999fe9051fb4a9f74b0f1afbbd1df2"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.199"
  depends_on "libbirch" => "0.199"
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
