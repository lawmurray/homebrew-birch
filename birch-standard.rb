class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-unversioned.tar.gz"
  version "1.32"
  sha256 "9da1bf9d6b538817e4e07e4531b775bdc7fa7b42d4b5c5f9150ef0bb2f8ca536"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.32"
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
