class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.237"
  sha256 "65ac8932d0ac9502fa33a779a8e2f5be1e44954d26441b33892b9dbbced59051"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.237"
  depends_on "cairo"
  depends_on "libbirch" => "1.237"

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
