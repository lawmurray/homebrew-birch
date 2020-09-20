class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.187"
  sha256 "c7a233447ca9d757cbe99aac03c1192b2095065777693fd5bdf0e2d719b88f90"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.187"
  depends_on "cairo"
  depends_on "libbirch" => "0.187"

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
