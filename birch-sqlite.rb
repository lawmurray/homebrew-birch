class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.596.tar.gz"
  version "1.596"
  sha256 "59cacc7639249c0339c9dc2070a18ac3c6f483a72a3e2eec3be26eb220f6ef94"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.596"
  depends_on "libbirch" => "1.596"
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
