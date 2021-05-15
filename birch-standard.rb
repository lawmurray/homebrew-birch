class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.524.tar.gz"
  version "1.524"
  sha256 "360f4d7610277cb31659f2adb9f343b1c5fe2d6964b49fc29819587912067ff7"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.524"
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
