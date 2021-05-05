class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.486.tar.gz"
  version "1.486"
  sha256 "ac6840199f981979a0d674c59ccf69499753d8297152e3d5d106c24a816364a1"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.486"
  depends_on "libbirch" => "1.486"
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
