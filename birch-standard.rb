class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-unversioned.tar.gz"
  version "1.66"
  sha256 "f97f6b2f2412fc5ac1c55ff100d16e1c76c4d67df3a56d9cc9854ff73fac4a1e"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.66"
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
