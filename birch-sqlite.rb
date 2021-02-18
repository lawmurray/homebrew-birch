class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.257.tar.gz"
  version "1.257"
  sha256 "0f0fde669c662ad5781495af94f8bbd994f91bdf81060a695fcd4f4b5efbeebb"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.257"
  depends_on "libbirch" => "1.257"
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
