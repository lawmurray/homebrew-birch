class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.32"
  sha256 "678e7ae9794b3bf4062c58bca6a1cd478087b901dd1c786a523fb228cc49e1c7"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.32"
  depends_on "cairo"
  depends_on "libbirch" => "1.32"

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
