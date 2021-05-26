class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.567.tar.gz"
  version "1.567"
  sha256 "30ffc67a6ec362cd6863e426c70530f4054e6891b9d0b624d7ab8d7dd55de828"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.567"
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
