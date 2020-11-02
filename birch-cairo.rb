class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.55"
  sha256 "23097580b4c147b07b7b94489bfa2923aaab7566994a2cd543eb888d7ae4f2d3"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.55"
  depends_on "cairo"
  depends_on "libbirch" => "1.55"

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
