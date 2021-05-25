class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.557.tar.gz"
  version "1.557"
  sha256 "2704cf963cea99361e6e737eb07142c5a643832118372d5f0dd33c269f8bb0c5"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.557"
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
