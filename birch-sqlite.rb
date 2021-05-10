class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.511.tar.gz"
  version "1.511"
  sha256 "6f174fa7d85de102df64607d2e4395a4a8b2d893875f6fcefdc6faa60f07e59d"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.511"
  depends_on "libbirch" => "1.511"
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
