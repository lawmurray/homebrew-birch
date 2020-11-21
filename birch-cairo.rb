class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.74"
  sha256 "573deaf916fbf47c060f8798270c51c87e6001fae876585314cfd648a29b1b32"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.74"
  depends_on "cairo"
  depends_on "libbirch" => "1.74"

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
