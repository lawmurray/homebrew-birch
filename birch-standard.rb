class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.630.tar.gz"
  version "1.630"
  sha256 "deb4dd9c57ab83c45604408d3c8bc206c40bc2996a7ea795f398e808e753b224"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.630"
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
