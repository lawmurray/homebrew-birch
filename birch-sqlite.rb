class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.249"
  sha256 "cd88d9633c76aaf983cf01eeeeacccdf85a1d626fe8d3e1cda98b9c845179886"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.249"
  depends_on "libbirch" => "1.249"
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
