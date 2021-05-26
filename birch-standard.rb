class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.563.tar.gz"
  version "1.563"
  sha256 "895b7d585c0f4b26f13f554d9af45010fd3718df40ceb254dbf9937d14bf8373"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.563"
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
