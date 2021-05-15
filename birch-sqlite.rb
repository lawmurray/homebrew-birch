class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.525.tar.gz"
  version "1.525"
  sha256 "f8df7eed2fa1681f116b3e6a0d6e8e1054f5e58e864e77a1459fbed9305e5935"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.525"
  depends_on "libbirch" => "1.525"
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
