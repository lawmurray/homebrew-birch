class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.75"
  sha256 "a894a76c6bbf046db53150f681f05d107170aaecc1dec58586374a447bcbcefa"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.75"
  depends_on "cairo"
  depends_on "libbirch" => "1.75"

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
