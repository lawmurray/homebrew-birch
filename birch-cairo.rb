class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.236"
  sha256 "ad1a896122edcdd5ee440c58d7403556b3966e9f25b939e4b5b548c53f8e8615"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.236"
  depends_on "cairo"
  depends_on "libbirch" => "1.236"

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
