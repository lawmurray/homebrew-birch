class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.539.tar.gz"
  version "1.539"
  sha256 "f8bb1199c2b2f26525dee8a3025462598c3f150b9c1c858850ce4a198ef363fe"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.539"
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
