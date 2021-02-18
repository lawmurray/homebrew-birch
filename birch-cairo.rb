class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.249"
  sha256 "61714f7c6dd0a5084bd89032daf8bd439ada3a225e08fb7fd36acd10d461773a"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.249"
  depends_on "cairo"
  depends_on "libbirch" => "1.249"

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
