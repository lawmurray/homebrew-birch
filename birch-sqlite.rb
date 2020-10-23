class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.34"
  sha256 "a65632d1b6ed0f57b245937ab7b9c7d4b3eb83a09030d8de7edf57e3c18fce1b"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.34"
  depends_on "libbirch" => "1.34"
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
