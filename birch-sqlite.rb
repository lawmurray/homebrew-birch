class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.37"
  sha256 "bd0bbdb11d34274a04bdc5bcccf57d090d2cd1aaadbe1dd6789a7d894c72a91a"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.37"
  depends_on "libbirch" => "1.37"
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
