class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.530.tar.gz"
  version "1.530"
  sha256 "9fc7df953dc62546760aa6c74a2a5c69d07d724516c2bff38586b163fd9630ef"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.530"
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
