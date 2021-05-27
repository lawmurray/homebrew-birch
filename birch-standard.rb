class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.569.tar.gz"
  version "1.569"
  sha256 "c58d117875ff4a56260a2fb0c6af0f2351105dc41d9b950e11a00963ec755039"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.569"
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
