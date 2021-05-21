class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.542.tar.gz"
  version "1.542"
  sha256 "2bb6d0d503fc967bd582bc31af319c819ae61a287e4b69f3f2261bd24604976b"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.542"
  depends_on "cairo"
  depends_on "libbirch" => "1.542"

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
