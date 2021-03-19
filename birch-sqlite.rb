class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.300.tar.gz"
  version "1.300"
  sha256 "ce873f2d13723fb019acfb18e1fb81cb2c252fc2a603b3cb0d93e8cc92cbf3fd"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.300"
  depends_on "libbirch" => "1.300"
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
