class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.627.tar.gz"
  version "1.627"
  sha256 "9ceee5a6f762405f3494c5ed45a159ff10d71768360422298843a7062f59670c"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.627"
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
