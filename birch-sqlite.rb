class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.557.tar.gz"
  version "1.557"
  sha256 "90a14f7fcf4f59875b00f0eedc864acf653d6c592aba8e64d18015c7329b54f4"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.557"
  depends_on "libbirch" => "1.557"
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
