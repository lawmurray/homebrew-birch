class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-unversioned.tar.gz"
  version "1.229"
  sha256 "f1cbddc7b68b6fb4e6c9500097a4ed439067fa336028372d0600eb2493606635"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.229"
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
