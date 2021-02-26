class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.297.tar.gz"
  version "1.297"
  sha256 "1c84668376ee6d1d63901768d81671ab0d7ac1ac8293f7515a07b0cdbe5c1973"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.297"
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
