class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "0.188"
  sha256 "ed2835e7184f43ac7f7c7c9343dbae4f669ce9e9c3dc98237d1f2a812c510f8b"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.188"
  depends_on "libbirch" => "0.188"
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
