class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.239"
  sha256 "d41c5f5a4dd56843d601638818f40ae824e4e0c2995e95526c3fbd093503bfab"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.239"
  depends_on "cairo"
  depends_on "libbirch" => "1.239"

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
