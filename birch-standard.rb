class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-unversioned.tar.gz"
  version "0.190"
  sha256 "d6e4b4a21fdc0a072a128ee2b96eeb88d0abd7d6482dc3ae9d0a442d3bf66a5b"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "0.190"
  depends_on "libyaml"

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
