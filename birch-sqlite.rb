class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.111"
  sha256 "daf199610c9b54cc30589f9fe369c4c335f395da645a9990a8cb3d0ba8f9d772"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.111"
  depends_on "libbirch" => "1.111"
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
