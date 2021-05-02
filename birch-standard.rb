class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.477.tar.gz"
  version "1.477"
  sha256 "1c284da24cff8381c442befb1386327bc7461199c1772ec8e551dfcd0cf87626"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.477"
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
