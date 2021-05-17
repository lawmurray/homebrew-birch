class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.538.tar.gz"
  version "1.538"
  sha256 "62dc46a846779279bd991e712c00ef7b21a6eec01114ee08ae7bb0f348c020de"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.538"
  depends_on "cairo"
  depends_on "libbirch" => "1.538"

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
