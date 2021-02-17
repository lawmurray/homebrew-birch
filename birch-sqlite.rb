class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.242"
  sha256 "a5cc709660c6cf78736a085771a4b3694e4cfba4f61d1d3619c3d7c440718af6"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.242"
  depends_on "libbirch" => "1.242"
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
