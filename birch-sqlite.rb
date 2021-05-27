class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.569.tar.gz"
  version "1.569"
  sha256 "7ec867beda078486b7a208eae4638254f7d97400d5da7002ac334f443c42492d"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.569"
  depends_on "libbirch" => "1.569"
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
