class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.511.tar.gz"
  version "1.511"
  sha256 "30c9ab95535916f18c349ba2a197df473e6ec02a6ed87ac7ebc4cb1b811f79bc"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.511"
  depends_on "cairo"
  depends_on "libbirch" => "1.511"

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
