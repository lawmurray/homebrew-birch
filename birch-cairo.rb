class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "v1"
  sha256 "181b97097d874aee724b6aabe6374340da3818789cf0c173b202953ec5462f8e"
  license "Apache-2.0"
  depends_on "birch-standard" => "v1"
  depends_on "cairo"
  depends_on "libbirch" => "v1"

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
