class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.487.tar.gz"
  version "1.487"
  sha256 "47c0c5a0709096048fced7febaa59412ae7e044791633537e879d00ddc562640"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.487"
  depends_on "cairo"
  depends_on "libbirch" => "1.487"

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
