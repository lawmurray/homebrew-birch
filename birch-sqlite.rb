class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.597.tar.gz"
  version "1.597"
  sha256 "6a797c4da5205796f6e6c250de2d2e1a53f147e5d6c1c5de4fab36eef500ac75"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.597"
  depends_on "libbirch" => "1.597"
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
