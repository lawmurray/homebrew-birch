class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.491.tar.gz"
  version "1.491"
  sha256 "fcb676e95b4edd9015f866d7508cf0f4c81e33ee67965da08cd331b11f195c72"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.491"
  depends_on "libbirch" => "1.491"
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
