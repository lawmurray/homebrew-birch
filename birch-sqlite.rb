class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.44"
  sha256 "89a5b1226fe1d7f5b5a377b6b47507368bbb968f42d7560f942d7827abed313f"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.44"
  depends_on "libbirch" => "1.44"
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
