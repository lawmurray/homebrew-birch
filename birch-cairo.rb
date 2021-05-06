class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.491.tar.gz"
  version "1.491"
  sha256 "196edec8dcff485bdcc9fbedded9b3053a93f549b0a449f9c418a0ac1db61548"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.491"
  depends_on "cairo"
  depends_on "libbirch" => "1.491"

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
