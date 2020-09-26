class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.18"
  sha256 "498354ce3e4b3a738e78d0b78a1a665b8a397a77437df12c640d2f112fefd5fd"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.18"
  depends_on "libbirch" => "1.18"
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
