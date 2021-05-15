class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.524.tar.gz"
  version "1.524"
  sha256 "bcaa13299aa91657323e1d957e94ab92e15405daa47e032cb30db17bd18aa5ca"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.524"
  depends_on "libbirch" => "1.524"
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
