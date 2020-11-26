class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.77"
  sha256 "a0a308d6fb265c62284cb681f3ee50558e0226e4308cefb6d1d52b66f4e5219a"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.77"
  depends_on "cairo"
  depends_on "libbirch" => "1.77"

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
