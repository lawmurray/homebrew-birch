class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.55"
  sha256 "e8b29f832bdef5fdda02182078d0e5965e8ac9755fe6c7374dfb9ed4dc657902"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.55"
  depends_on "libbirch" => "1.55"
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
