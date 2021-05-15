class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.524.tar.gz"
  version "1.524"
  sha256 "436fa5fbd2c2851c5d7cadab05cee442bf5db791a069dbca3e601093531d8fb2"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.524"
  depends_on "cairo"
  depends_on "libbirch" => "1.524"

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
