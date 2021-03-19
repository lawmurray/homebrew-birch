class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.301.tar.gz"
  version "1.301"
  sha256 "167b539a6b4ec705e7908ad367e7cc2cd02f435f2ffce96d8d02999e449b8eef"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.301"
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
