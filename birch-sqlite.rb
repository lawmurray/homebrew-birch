class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.231"
  sha256 "1866f4013b65ede128b70ac6e951f3f22b7b750b175252b1d26ec73ec12ee9b4"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.231"
  depends_on "libbirch" => "1.231"
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
