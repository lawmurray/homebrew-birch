class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.27"
  sha256 "b94c3b940c6b3ae9407336425b2437b9de7b6658ce5b9b59aa21f32a0c15ea47"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.27"
  depends_on "cairo"
  depends_on "libbirch" => "1.27"

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
