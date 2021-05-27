class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.574.tar.gz"
  version "1.574"
  sha256 "98e9d23ca00c6c5b887e79b2634620cd92c459472487cca1891f2d05d06801a9"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.574"
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
