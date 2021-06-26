class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.625.tar.gz"
  version "1.625"
  sha256 "b4c85867b17ea173fa92103379a1e79bade6b265ca4ac7f83c18cd8702ee1b16"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.625"
  depends_on "libbirch" => "1.625"
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
