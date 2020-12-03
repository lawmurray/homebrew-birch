class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.104"
  sha256 "45f74646b08af32e60bd41ce44192bf7ca22a01e68567f61035fe3ba12fe915b"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.104"
  depends_on "cairo"
  depends_on "libbirch" => "1.104"

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
