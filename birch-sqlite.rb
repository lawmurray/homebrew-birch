class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "0.163"
  sha256 "95cb5359009567d898463564e5ee0c6df77faec7d96c1b52d93bf3f060dca5c7"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.163"
  depends_on "libbirch" => "0.163"
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
