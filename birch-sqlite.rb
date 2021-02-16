class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.237"
  sha256 "450921889cfa398d32a1227c9ec134277e2dcc2d730c332ddce6bc7e1e89d0b9"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.237"
  depends_on "libbirch" => "1.237"
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
