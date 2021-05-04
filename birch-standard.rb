class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.483.tar.gz"
  version "1.483"
  sha256 "2ee21abc61080d154f502e0a965d9c4d2e71eeee517f48a81c5ffa0e1df501ad"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.483"
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
