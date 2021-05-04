class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.482.tar.gz"
  version "1.482"
  sha256 "4a5f4a606b566f3d7921411ec94b952d7e999246cc8ead2ed63a046fcbfe5bd2"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.482"
  depends_on "cairo"
  depends_on "libbirch" => "1.482"

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
