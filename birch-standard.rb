class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.517.tar.gz"
  version "1.517"
  sha256 "61c4153c7d3b48e33f531cc040aea2abc5e1bdb4919c45245c44e7195994eec1"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.517"
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
