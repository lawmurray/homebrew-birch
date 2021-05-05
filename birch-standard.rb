class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.486.tar.gz"
  version "1.486"
  sha256 "0f2a3629a900b45fed47e0cba67ac9dd708be32e2fd14d9df011ccc704ef0010"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.486"
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
