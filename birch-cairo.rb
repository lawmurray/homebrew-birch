class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.41"
  sha256 "94fcc7082c52c53018487d3597d64451ad15eced7cd52b117424133e1ed1ade8"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.41"
  depends_on "cairo"
  depends_on "libbirch" => "1.41"

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
