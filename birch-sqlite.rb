class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.602.tar.gz"
  version "1.602"
  sha256 "12e2d1b5a94a64f9db46d803e88dc2624c042b355d019ac48f891f36e55b932a"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.602"
  depends_on "libbirch" => "1.602"
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
