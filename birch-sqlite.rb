class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.527.tar.gz"
  version "1.527"
  sha256 "973a72c8be7045b4a36c85b3767816f61d5c44a2a4d1fa88b5440f95607421da"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.527"
  depends_on "libbirch" => "1.527"
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
