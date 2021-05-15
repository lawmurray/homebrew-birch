class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.527.tar.gz"
  version "1.527"
  sha256 "d16aa1325c6659b78f81ea08a443df3ff57b905e53f47805814181b328c99163"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.527"
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
