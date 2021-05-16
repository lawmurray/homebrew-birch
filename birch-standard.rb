class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.534.tar.gz"
  version "1.534"
  sha256 "7b7ab36557b9719dbb3d99f22accd9a820c69f293c8ce9a478578db6fc22759e"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.534"
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
