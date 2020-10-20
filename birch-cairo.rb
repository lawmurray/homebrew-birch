class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.26"
  sha256 "462aa2d5f16b9fdbddd55b2b1516a83e0b62838106311231712f84b2bbe171bf"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.26"
  depends_on "cairo"
  depends_on "libbirch" => "1.26"

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
