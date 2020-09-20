class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "0.190"
  sha256 "cb8a44e9bd2c17e5807e4dcf0d3d1f414e4b225701f182e1bb24a44bf16d281b"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.190"
  depends_on "libbirch" => "0.190"
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
