class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.260.tar.gz"
  version "1.260"
  sha256 "2204c519e7b4ac9b59d00947c18407d033ac722358da4e3a9ec0072e0bb3f25f"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.260"
  depends_on "libbirch" => "1.260"
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
