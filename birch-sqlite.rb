class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.3"
  sha256 "e9444c59f6d54e8c1708cc5b8522940eb84fbc68fb76235d4d85d319ee0038c8"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.3"
  depends_on "libbirch" => "1.3"
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
