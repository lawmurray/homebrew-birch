class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.38"
  sha256 "4bfd7686a8808b05c42cf512a99fe6ac37f2d501007c95165a5edfe649d0ac0d"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.38"
  depends_on "libbirch" => "1.38"
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
