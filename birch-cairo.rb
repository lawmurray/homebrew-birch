class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.36"
  sha256 "5ee831083b98d58a724d71d4d3ab5ec914df57031aaf61f3a5adfa139085ec95"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.36"
  depends_on "cairo"
  depends_on "libbirch" => "1.36"

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
