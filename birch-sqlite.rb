class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.545.tar.gz"
  version "1.545"
  sha256 "0d24f7806a395a856ec3107df8e776d77239133046c68bac60a8942a7540921c"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.545"
  depends_on "libbirch" => "1.545"
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
