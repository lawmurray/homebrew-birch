class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.542.tar.gz"
  version "1.542"
  sha256 "ee7e535c52b6da92182d495e3578b136e1db8f7f7e619de86de3d123c8d8c52a"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.542"
  depends_on "libbirch" => "1.542"
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
