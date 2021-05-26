class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.567.tar.gz"
  version "1.567"
  sha256 "d8a045f406bc8b853e8df0bb8264fe210bbea781fd63855b28e2b25305d729c7"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.567"
  depends_on "cairo"
  depends_on "libbirch" => "1.567"

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
