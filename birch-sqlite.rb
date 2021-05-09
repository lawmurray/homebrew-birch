class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.507.tar.gz"
  version "1.507"
  sha256 "d11ef70671f991c87b222c52d588f6c3dfbc10080a703c22c5d6784539b82882"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.507"
  depends_on "libbirch" => "1.507"
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
