class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.562.tar.gz"
  version "1.562"
  sha256 "44b2dc4c27c8a1c70f51d06f428287dc2e4a13ad5a89cc2325b131c0ffd987a9"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.562"
  depends_on "libbirch" => "1.562"
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
