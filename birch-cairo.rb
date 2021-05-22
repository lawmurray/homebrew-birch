class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.545.tar.gz"
  version "1.545"
  sha256 "6f83632fdb130015160ebba8035f5e5390d84c2e45482c1fa100fb90890cd7cc"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.545"
  depends_on "cairo"
  depends_on "libbirch" => "1.545"

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
