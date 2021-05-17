class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.535.tar.gz"
  version "1.535"
  sha256 "4fba531bad6d404f0dddc73d57cfced7c1f4f91df65031ef6f12d275d32b7d31"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.535"
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
