class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-unversioned.tar.gz"
  version "1.34"
  sha256 "7745d54b77c38ff8ed96d8e7f8bf1b2d88e7e1bcf07c88ebbf785c197ae656dc"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.34"
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
