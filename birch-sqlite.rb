class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.106"
  sha256 "efde7f3a02c388ecc3dc367a39860089ff7af85206e32b9ea11ace78c759f85d"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.106"
  depends_on "libbirch" => "1.106"
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
