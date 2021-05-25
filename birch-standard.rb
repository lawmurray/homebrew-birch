class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.556.tar.gz"
  version "1.556"
  sha256 "0f93f8d1111f1c9dc3e2d0181d520a45d7e42f52e5e4b74d1bda18ecd9b5d10b"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.556"
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
