class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.574.tar.gz"
  version "1.574"
  sha256 "b92961414a8358447428060496a042b0090df5bcf008e1ef269c83630066e6f7"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.574"
  depends_on "libbirch" => "1.574"
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
