class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.288.tar.gz"
  version "1.288"
  sha256 "6286f1ef522ab3e2dd73ddaf8ed122775f92992266dd41df3cac6e7b40dd10ca"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.288"
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
