class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.247"
  sha256 "40dce77db6a01f9643450ab58b9dc231cd963951150a8ed61dd766cbb2d29db7"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.247"
  depends_on "cairo"
  depends_on "libbirch" => "1.247"

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
