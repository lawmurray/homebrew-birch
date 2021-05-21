class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.542.tar.gz"
  version "1.542"
  sha256 "b86004b06d66392a574e8844ea7ad4504f999ba4398d46bfa461a1ceed6d6182"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.542"
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
