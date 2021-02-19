class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.260.tar.gz"
  version "1.260"
  sha256 "447b1e51fb0953084f09c31e19188774ba51bb28e49d2e0f6d456727ba4f8849"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.260"
  depends_on "cairo"
  depends_on "libbirch" => "1.260"

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
