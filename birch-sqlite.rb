class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.59"
  sha256 "c8cf2dc6a650b635c31e492362707388ba0178eda538b133115a9f834a0809f1"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.59"
  depends_on "libbirch" => "1.59"
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
