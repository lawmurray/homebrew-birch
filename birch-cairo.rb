class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.230"
  sha256 "6f9922bf38c8738a28917e7ebdb1b14de48576445b3c1a7cee0602cf0e09f8a0"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.230"
  depends_on "cairo"
  depends_on "libbirch" => "1.230"

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
