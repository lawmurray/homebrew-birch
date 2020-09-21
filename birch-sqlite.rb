class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "0.195"
  sha256 "0fa1d217ca83ecd3024b9b574f3f423597ff9fd72195ac699d476f4b2207473c"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.195"
  depends_on "libbirch" => "0.195"
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
