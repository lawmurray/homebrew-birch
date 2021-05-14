class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.521.tar.gz"
  version "1.521"
  sha256 "1365492b1c714af78adb3cc30fe70bd5df27e8a5f632a197c00945081556cf05"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.521"
  depends_on "libyaml"

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
