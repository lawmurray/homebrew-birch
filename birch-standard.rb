class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.303.tar.gz"
  version "1.303"
  sha256 "9ebc2c2fd054c882e908addbaaec93f5571f68eca6b02670e3091749eb903fc5"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.303"
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
