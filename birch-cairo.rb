class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.105"
  sha256 "4b415deec1e9a32ec2f8ce00c2d87f20a9d277c8b1f1d25352a884725b193434"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.105"
  depends_on "cairo"
  depends_on "libbirch" => "1.105"

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
