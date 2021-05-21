class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.544.tar.gz"
  version "1.544"
  sha256 "2f055b3e13ed85c74de16f8d87d52851425e6483dca5ab61e51b07b69e639fd6"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.544"
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
