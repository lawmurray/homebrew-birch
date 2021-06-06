class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.605.tar.gz"
  version "1.605"
  sha256 "10d120419b638a340e8871befdf0855a3ee8d6d13f4d1d9a675908a1a26cb802"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.605"
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
