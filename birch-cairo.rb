class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.560.tar.gz"
  version "1.560"
  sha256 "b249e3c2fea37e3985b9f057e7a12086740002cd0a513983fb4ccfa76ab8787e"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.560"
  depends_on "cairo"
  depends_on "libbirch" => "1.560"

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
