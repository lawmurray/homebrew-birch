class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.18"
  sha256 "8fc55cf2807af715d70650ae16d932bebb248d6355c1669922f3249c08836781"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.18"
  depends_on "cairo"
  depends_on "libbirch" => "1.18"

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
