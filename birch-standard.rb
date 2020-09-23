class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-unversioned.tar.gz"
  version "0.199"
  sha256 "fcaadf179bd3c0692d9affa2ed45c7c3d1835ff2b6a769a58bdc4dfb5bf2bf29"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "0.199"
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
