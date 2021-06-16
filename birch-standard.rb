class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.610.tar.gz"
  version "1.610"
  sha256 "028b1a3b0b7ff2fad533f9a6f2230572de09140e1394a909130583bb29f230b2"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.610"
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
