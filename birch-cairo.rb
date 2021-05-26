class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.563.tar.gz"
  version "1.563"
  sha256 "5bf437f7e6b4482902a0e14004beac0fc46fc3c0f0631691e89beb52bf2a37d3"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.563"
  depends_on "cairo"
  depends_on "libbirch" => "1.563"

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
