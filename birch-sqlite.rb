class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.526.tar.gz"
  version "1.526"
  sha256 "957a0057570041d9762ef18f4a81b7a6c1909c2b8eb7bd5a7b2e3919e2179a29"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.526"
  depends_on "libbirch" => "1.526"
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
