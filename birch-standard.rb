class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.555.tar.gz"
  version "1.555"
  sha256 "418290b73ee99c16bb058dc2eda657283ff8714db5d78d12bdc8c006dc0721f4"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.555"
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
