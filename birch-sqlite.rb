class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.630.tar.gz"
  version "1.630"
  sha256 "7b7de7fb31d3ae7a24a1a0dae3da5b4f368542c0bb8cca52cd836979e38ddd75"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.630"
  depends_on "libbirch" => "1.630"
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
