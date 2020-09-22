class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "0.197"
  sha256 "b0e132a84287a05943b4811d9f002e8540eb80d0a63acb91ecb99bc7a9e804c6"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.197"
  depends_on "libbirch" => "0.197"
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
