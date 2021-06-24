class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.621.tar.gz"
  version "1.621"
  sha256 "a2a39635081a93656f37e38aa78358780a2f33206e03f76485c02154af9367e2"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.621"
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
