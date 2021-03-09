class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.299.tar.gz"
  version "1.299"
  sha256 "9cb5ae23a7e6ca777e5b193934ca051fade8cb0fbe15984949154299778655cb"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.299"
  depends_on "libbirch" => "1.299"
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
