class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.24"
  sha256 "30c0ad6a2862614bd4afc1c2155308dc8a55d373c6a4065da649dc5031d7df47"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.24"
  depends_on "libbirch" => "1.24"
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
