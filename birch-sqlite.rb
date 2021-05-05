class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.487.tar.gz"
  version "1.487"
  sha256 "fe8d12923af725b273bb5fda9d2ffcdad3b3ee6e6b498391d7ca0e34d2a76e85"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.487"
  depends_on "libbirch" => "1.487"
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
