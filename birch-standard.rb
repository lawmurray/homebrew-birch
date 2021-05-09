class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.507.tar.gz"
  version "1.507"
  sha256 "e11013e1169421fa58ad1cfc9c70270c7d1f84b15f03e302dab48d5e3fa86298"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.507"
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
