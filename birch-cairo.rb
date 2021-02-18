class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.257.tar.gz"
  version "1.257"
  sha256 "c8a8099c8d50c1ff4afbe3b06fbeb7c5d5bdcb31ee35d92c1c003b4ecdce6a23"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.257"
  depends_on "cairo"
  depends_on "libbirch" => "1.257"

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
