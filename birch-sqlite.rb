class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.258.tar.gz"
  version "1.258"
  sha256 "d99c103d6af4f3d639668e34a9f89b867bc086f4e7e2ca5a0c7db3ac62e786dc"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.258"
  depends_on "libbirch" => "1.258"
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
