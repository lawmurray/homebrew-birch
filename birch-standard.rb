class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.300.tar.gz"
  version "1.300"
  sha256 "1e77b48f4cec18c4a3e6bc2092265ff42649f08c90231b9006224b809f54d7af"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.300"
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
