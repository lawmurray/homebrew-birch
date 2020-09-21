class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "0.191"
  sha256 "d93cc9acd6226d5451fcf4d75c302f4f4e9edf60dc36c33ec8a63e7abec397b7"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.191"
  depends_on "libbirch" => "0.191"
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
