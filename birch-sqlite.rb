class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.69"
  sha256 "1c5620ab7f25156101cd6644f794b423793f73fb688e65ea41a5c0c6daa5e574"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.69"
  depends_on "libbirch" => "1.69"
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
