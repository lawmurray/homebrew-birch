class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.535.tar.gz"
  version "1.535"
  sha256 "7ec3f3c6e080d679498ebc685f39f5a10ba81f71cba068e1f398b476f8f69431"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.535"
  depends_on "libbirch" => "1.535"
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
