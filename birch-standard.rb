class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.560.tar.gz"
  version "1.560"
  sha256 "0c8824e0c4dd11d82d39de28ab2c6798074eeed89a224b95e8b7117a12c7787c"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.560"
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
