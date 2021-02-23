class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.292.tar.gz"
  version "1.292"
  sha256 "8cdd28dddbd250f8b3832b13ed06a620079bc0fecbeb0a577099fe9cef8d3edb"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.292"
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
