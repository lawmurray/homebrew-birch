class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-unversioned.tar.gz"
  version "1.236"
  sha256 "96e484bd69dcbcb7f21548734ee27c744a3533dbdec34af727d5ba6b100e79b5"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.236"
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
