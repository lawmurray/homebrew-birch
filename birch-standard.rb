class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.257.tar.gz"
  version "1.257"
  sha256 "7cff9cb0fe83d8c3e04f14295760b4a017eb4bf162d9943da2d32b76cb0b5a6d"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.257"
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
