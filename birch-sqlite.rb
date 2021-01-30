class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.110"
  sha256 "e8040f6c92d74c2d128c6a9fe3c58fbb4aef0a3a0c0d5b4dac634400afb4edb2"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.110"
  depends_on "libbirch" => "1.110"
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
