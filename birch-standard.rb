class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.566.tar.gz"
  version "1.566"
  sha256 "209e82a84bd5caf36d5d706a0223b106625f97f52188972f7f6ead1a21ac6865"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.566"
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
