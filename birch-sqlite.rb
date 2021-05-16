class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.534.tar.gz"
  version "1.534"
  sha256 "3069faa7f9764b3b956e24bebb6781a628e9286256781ec29ea5d34b3fc40845"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.534"
  depends_on "libbirch" => "1.534"
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
