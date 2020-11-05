class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-unversioned.tar.gz"
  version "1.59"
  sha256 "6c2dab04ca7e5949eb0be565703fbcc73088d90314710ef20303eec84c71e369"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.59"
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
