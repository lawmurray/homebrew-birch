class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.238"
  sha256 "632ae730d6e5c029c663510fe30bb0a4c3e178b1360834ad7235ddf007a9b8e5"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.238"
  depends_on "libbirch" => "1.238"
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
