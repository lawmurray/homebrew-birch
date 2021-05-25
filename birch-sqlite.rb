class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.556.tar.gz"
  version "1.556"
  sha256 "1394abd3d5a3a647680c21c692d55aa8f79d5b901f61e43722a5211adf20bfb0"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.556"
  depends_on "libbirch" => "1.556"
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
