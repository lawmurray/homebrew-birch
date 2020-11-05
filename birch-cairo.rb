class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.59"
  sha256 "a6401dcc17b9e6b97c48d6506b991a74b1e3c15ba85dc0f6ccbde2b721953733"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.59"
  depends_on "cairo"
  depends_on "libbirch" => "1.59"

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
