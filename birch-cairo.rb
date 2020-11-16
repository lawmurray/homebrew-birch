class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.67"
  sha256 "0e4d5e86338d2add85f5d6f4c68364cf31b0bf286a4d75d4828aea7c15815d1b"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.67"
  depends_on "cairo"
  depends_on "libbirch" => "1.67"

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
