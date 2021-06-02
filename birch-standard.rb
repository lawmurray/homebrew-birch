class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.596.tar.gz"
  version "1.596"
  sha256 "7d9b2320579f1c2ce4e766dc8f44d8124963d65b42bac60258ba31e8b3cd6ee6"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.596"
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
