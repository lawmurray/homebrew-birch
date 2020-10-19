class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.25"
  sha256 "fc8514f5ddf694aa10ded629a0959b991dd29cc865897b7bfabe8c15059e12c9"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.25"
  depends_on "cairo"
  depends_on "libbirch" => "1.25"

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
