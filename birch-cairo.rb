class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.111"
  sha256 "4d556213344c71fbad7628fc89986d8c52da35d3ce42a2bdb7068c4345c07105"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.111"
  depends_on "cairo"
  depends_on "libbirch" => "1.111"

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
