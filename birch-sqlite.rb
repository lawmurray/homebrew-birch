class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.32"
  sha256 "5a7b1f3992bd4b5d910449120f8b32c7c13ef3a87656b91392a491da1afac386"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.32"
  depends_on "libbirch" => "1.32"
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
