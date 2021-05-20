class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.539.tar.gz"
  version "1.539"
  sha256 "5db01330a067f5f55691098bd7a5253c75fc3341eb744a9df79c69171a9351f1"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.539"
  depends_on "libbirch" => "1.539"
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
