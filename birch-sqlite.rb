class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.60"
  sha256 "29e50b47825a39c92572083fbefa6242abf077a12f840cf8ba0643f8fe2ab6c6"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.60"
  depends_on "libbirch" => "1.60"
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
