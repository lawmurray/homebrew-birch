class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.624.tar.gz"
  version "1.624"
  sha256 "718a5f190b50667013e339d9641e427c0bcba5857c83183d46c8e97ca39bd7cb"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.624"
  depends_on "libbirch" => "1.624"
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
