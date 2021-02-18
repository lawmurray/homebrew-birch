class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.259.tar.gz"
  version "1.259"
  sha256 "810194ff26c4bc3eb7b629c14c40cab5faaaefea2bb17ea59f46b61805be73c9"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.259"
  depends_on "libbirch" => "1.259"
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
