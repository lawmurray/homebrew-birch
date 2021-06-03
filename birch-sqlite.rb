class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.601.tar.gz"
  version "1.601"
  sha256 "d884e2ca9626a6ec9bf6c9fe6304b9070007447a47de62f4fecd928f7f050a6d"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.601"
  depends_on "libbirch" => "1.601"
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
