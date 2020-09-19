class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.181"
  sha256 "a0cd9ff8d5c3c5233581045ac405cf97e63848aebd5a7390a52d6bbf647c9be0"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.181"
  depends_on "cairo"
  depends_on "libbirch" => "0.181"

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
