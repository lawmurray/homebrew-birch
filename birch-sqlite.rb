class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-1.554.tar.gz"
  version "1.554"
  sha256 "66f9db9c4491c887bcbf610ebf97787ea0b4aa1dcca6f664029706b6aa2eaf35"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.554"
  depends_on "libbirch" => "1.554"
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
