class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.303.tar.gz"
  version "1.303"
  sha256 "2a32ddf3f5d09f837a3d9881029742092ccaef81c22e3a3c8391ec565d3c667f"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.303"
  depends_on "cairo"
  depends_on "libbirch" => "1.303"

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
