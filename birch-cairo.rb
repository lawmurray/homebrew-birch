class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.13"
  sha256 "722207552839f29af24771a6d82df226b348fe197b51ef54a518ed50f64f66b7"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.13"
  depends_on "cairo"
  depends_on "libbirch" => "1.13"

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
