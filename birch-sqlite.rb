class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.297.tar.gz"
  version "1.297"
  sha256 "9b7c2f0ea7596e5b6fe940a508e478f09021cdb1718bb329057bc0401230303a"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.297"
  depends_on "libbirch" => "1.297"
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
