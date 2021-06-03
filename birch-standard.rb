class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.602.tar.gz"
  version "1.602"
  sha256 "e244dbabecf9255f448509206cae99cd3849759b2799f3cfa52868f0c4b7fd87"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.602"
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
