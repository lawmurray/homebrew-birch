class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.598.tar.gz"
  version "1.598"
  sha256 "9117972bd0e3fede58f25e8cfca16ff87b96a56f477d8053549a85b1a325da96"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.598"
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
