class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.548.tar.gz"
  version "1.548"
  sha256 "63cd54691be57d57d072dbfc60ec46b481c3b04ad07c005a3731a1e9ffd0dde5"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.548"
  depends_on "libbirch" => "1.548"
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
