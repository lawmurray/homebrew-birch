class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.485.tar.gz"
  version "1.485"
  sha256 "a70280a2a34c3c240d2c1b359117f5762fcb0ed119dbbaedd108039415aa3ec5"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.485"
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
