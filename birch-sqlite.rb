class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.544.tar.gz"
  version "1.544"
  sha256 "236f69f4519d1b528724e4596491b3ef410d41f6ba755b5a013198b4b784e7e7"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.544"
  depends_on "libbirch" => "1.544"
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
