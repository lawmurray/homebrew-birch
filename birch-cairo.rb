class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.259.tar.gz"
  version "1.259"
  sha256 "796533ed19d0d76907a381c66e90eea726ea610f6f9e44a6728b0f8456f994f1"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.259"
  depends_on "cairo"
  depends_on "libbirch" => "1.259"

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
