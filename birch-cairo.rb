class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.61"
  sha256 "dce3184e6493bf38f981e9695feabd21729d445d07af45faab46179562778404"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.61"
  depends_on "cairo"
  depends_on "libbirch" => "1.61"

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
