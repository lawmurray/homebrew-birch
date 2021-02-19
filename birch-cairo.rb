class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.288.tar.gz"
  version "1.288"
  sha256 "6e9c3d55858288799ae8a3e0d303bcd2a2248428f4c67072045fa38db34a2b6a"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.288"
  depends_on "cairo"
  depends_on "libbirch" => "1.288"

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
