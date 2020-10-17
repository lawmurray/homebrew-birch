class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.24"
  sha256 "f6cd7155efa01c2697271fb6de0334a736c8c16552874c73650d5b9b62f46b98"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.24"
  depends_on "cairo"
  depends_on "libbirch" => "1.24"

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
