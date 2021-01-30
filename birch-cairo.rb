class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.110"
  sha256 "5bcf8f88bd6f41692209a15a0652ed2ba08ea8eba5db802546eae5f4340cd069"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.110"
  depends_on "cairo"
  depends_on "libbirch" => "1.110"

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
