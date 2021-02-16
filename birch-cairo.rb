class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.235"
  sha256 "508a7f30ef5b489d947e9615ce8f63639ea890bbbc4dc89508a46a4571778c92"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.235"
  depends_on "cairo"
  depends_on "libbirch" => "1.235"

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
