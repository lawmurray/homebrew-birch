class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.70"
  sha256 "2ae8b7df4935d5fd5ce91c32f4793d45afa9efdb9e742371b73539ee0fbe4765"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.70"
  depends_on "cairo"
  depends_on "libbirch" => "1.70"

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
