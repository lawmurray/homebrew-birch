class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.595.tar.gz"
  version "1.595"
  sha256 "70b80dc97360dc9d20f90233c76bb35d6ac041aa82d9a989c7ae4d800c72b331"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.595"
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
