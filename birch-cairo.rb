class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.489.tar.gz"
  version "1.489"
  sha256 "f20eba0ad8e19d3e2f2d0eccb3254a398411524aa9903279aa9c30ac6440a50e"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.489"
  depends_on "cairo"
  depends_on "libbirch" => "1.489"

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
