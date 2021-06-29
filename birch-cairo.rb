class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.629.tar.gz"
  version "1.629"
  sha256 "b324711717f9c538d1d42bf0be603b005b996f20c03a90a7a96f6c06937465f7"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.629"
  depends_on "cairo"
  depends_on "libbirch" => "1.629"

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
