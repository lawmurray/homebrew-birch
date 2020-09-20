class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "0.186"
  sha256 "0c82fcce383f8422cd44451697f9db7f34d3be15f0760b1bf6fc3eeba7caf6b2"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.186"
  depends_on "libbirch" => "0.186"
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
