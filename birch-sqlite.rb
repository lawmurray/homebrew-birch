class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.566.tar.gz"
  version "1.566"
  sha256 "3e00e38590685bbf25a8136b781b61ae68e7d1475f4773fa5298246180c12b89"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.566"
  depends_on "libbirch" => "1.566"
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
