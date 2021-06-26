class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.625.tar.gz"
  version "1.625"
  sha256 "f80de6ae5471921436be7cb4713a2e022381e0b4949034b8f01cdb5e80066366"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.625"
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
