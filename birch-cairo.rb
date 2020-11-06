class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.60"
  sha256 "2f1bd091f4b71a92eea6fe7824a7e18805b5e8ec544c03c55e041e65b483483d"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.60"
  depends_on "cairo"
  depends_on "libbirch" => "1.60"

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
