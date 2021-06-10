class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.607.tar.gz"
  version "1.607"
  sha256 "65ff44c533e80ef5f22e38b3e8cae4f14326ea3c89c281efdced83779efdb94b"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.607"
  depends_on "libbirch" => "1.607"
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
