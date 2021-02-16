class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-sqlite-unversioned.tar.gz"
  version "1.230"
  sha256 "08d7a77b7b407b7e07b5ea78eff438f07f55d9db76b0d367cb7d15dedf8c0181"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.230"
  depends_on "libbirch" => "1.230"
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
