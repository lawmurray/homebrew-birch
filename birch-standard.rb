class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.261.tar.gz"
  version "1.261"
  sha256 "56f2f49fa29de741ea49cb88f6aae20ba6cb924cc603e1e1daeb3080c704cbdd"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.261"
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
