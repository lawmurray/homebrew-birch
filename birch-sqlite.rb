class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "0.203"
  sha256 "ae0dd9a6c422a90ca00f15d69f77e1dfe4f53a243a045d8aeb7b7a7b89dffe93"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.203"
  depends_on "libbirch" => "0.203"
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
