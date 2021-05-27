class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.569.tar.gz"
  version "1.569"
  sha256 "420d127dabb16ff4202a11142ca8ac043fe4db6ba9224e40155c47c758fd5c91"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.569"
  depends_on "cairo"
  depends_on "libbirch" => "1.569"

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
