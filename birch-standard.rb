class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.518.tar.gz"
  version "1.518"
  sha256 "ca555939683a86f37826495cd28ef70d719b9caa9f3693869008e3c524bf67a6"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.518"
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
