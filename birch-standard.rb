class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.532.tar.gz"
  version "1.532"
  sha256 "a0ad2b25941e7a6a167ed8e3bf313b52cc1ccca5f1b1ae2438e2f2c502742b2f"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.532"
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
