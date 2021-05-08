class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.504.tar.gz"
  version "1.504"
  sha256 "df9b988fd706371af2355b32cea709291ddf5386c1180472cb82ea7f2b1ed069"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.504"
  depends_on "libbirch" => "1.504"
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
