class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.607.tar.gz"
  version "1.607"
  sha256 "a6e9ce99964f99c602549124fb0e3cae03c22050f363bfce97bf4b3b36f72794"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.607"
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
