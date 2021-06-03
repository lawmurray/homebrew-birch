class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.601.tar.gz"
  version "1.601"
  sha256 "f6e10ab2835bc4af26d122629f6e7f9dbe00a7f208e4c1d9248118c0514bb5c5"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.601"
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
