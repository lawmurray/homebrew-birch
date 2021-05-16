class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.534.tar.gz"
  version "1.534"
  sha256 "10ddce4ef80764c4c6697d37a1f1d0b6049fc2eacd8d7bdb3934da3c14d6fc5a"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.534"
  depends_on "cairo"
  depends_on "libbirch" => "1.534"

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
