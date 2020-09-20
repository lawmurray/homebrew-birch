class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "0.189"
  sha256 "a9c1436ffba57bd0d99ed0a0c22753d59fb92de5b12b28b67e0ce0fdf95f055b"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.189"
  depends_on "libbirch" => "0.189"
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
