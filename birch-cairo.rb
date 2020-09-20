class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.189"
  sha256 "be55b845b46ca55e3eb5d6e6a17768409c26a413f816d4c63f74b64bca2b65a7"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.189"
  depends_on "cairo"
  depends_on "libbirch" => "0.189"

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
