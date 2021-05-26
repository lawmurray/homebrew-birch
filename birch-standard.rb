class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.564.tar.gz"
  version "1.564"
  sha256 "1c8bfaa1e82eeb3da9353d7a35522c6f642b7e7c1afab2e05c6f913d628e028f"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.564"
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
