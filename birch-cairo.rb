class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.564.tar.gz"
  version "1.564"
  sha256 "193e9ed7af8b13c478deaa437508e6a2d4334d123f24e4b9862fd547f65efee6"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.564"
  depends_on "cairo"
  depends_on "libbirch" => "1.564"

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
