class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.242"
  sha256 "a82cffed84a54a83f48f14840c1167d1ce31b2910c45c5b2e75c47c0cf73db9b"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.242"
  depends_on "cairo"
  depends_on "libbirch" => "1.242"

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
