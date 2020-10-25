class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.35"
  sha256 "0b27a3f3eb43dd8c972de2e44c7f047c382ff0848152013943510cb8935046d4"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.35"
  depends_on "cairo"
  depends_on "libbirch" => "1.35"

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
