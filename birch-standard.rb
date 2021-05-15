class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.525.tar.gz"
  version "1.525"
  sha256 "f31b08d9d441bb39f02782615b7a4790fb10be9f5401efa16811d22573667698"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.525"
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
