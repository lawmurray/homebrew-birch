class Birch < Formula
  desc "Bayesian inference for programmatic models"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-unversioned.tar.gz"
  version "1.229"
  sha256 "245f09521fd2c839a9cce510d3fab4da33a35208d309a0f0a52443a5f7e3b721"
  license "Apache-2.0"
  depends_on "bison" => :build
  depends_on "flex" => :build
  depends_on "autoconf"
  depends_on "automake"
  depends_on "boost"
  depends_on "libtool"
  depends_on "libyaml"
  depends_on "birch-cairo" => :recommended
  depends_on "birch-sqlite" => :recommended
  depends_on "birch-standard" => :recommended
  depends_on "libbirch" => :recommended

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "true"
  end
end
