class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-unversioned.tar.gz"
  version "1.26"
  sha256 "83e1f2edbe3ccc7f71fa5b8c53f5f090cabbc62722a05dd9ac92e4dd49dd0e6e"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.26"
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
