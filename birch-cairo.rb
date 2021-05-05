class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.485.tar.gz"
  version "1.485"
  sha256 "1575c7f43d2b6e33909e4c7a2b53663145c0d8951cc66067c138784cf9b0b2ed"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.485"
  depends_on "cairo"
  depends_on "libbirch" => "1.485"

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
