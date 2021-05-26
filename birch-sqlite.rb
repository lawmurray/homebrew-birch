class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.564.tar.gz"
  version "1.564"
  sha256 "a97e23d820da4ae43c2acacdb92cc1e152fb2d8cc563d7150c80a150ed95f629"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.564"
  depends_on "libbirch" => "1.564"
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
