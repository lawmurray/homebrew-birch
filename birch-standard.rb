class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.629.tar.gz"
  version "1.629"
  sha256 "e0c3f710aad2a0fb3c3c7d4a14d99d7bc7b94ce096faa3623a42ed686ac2bce0"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.629"
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
