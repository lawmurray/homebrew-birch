class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.261.tar.gz"
  version "1.261"
  sha256 "5809c94efdc78e048f09696c929146f4f4657d783a65aeac73d06216fd909eb1"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.261"
  depends_on "libbirch" => "1.261"
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
