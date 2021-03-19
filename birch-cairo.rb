class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.301.tar.gz"
  version "1.301"
  sha256 "cff4e4baed1aa9a36d6164965e2e7140f4df885180a0667d4ee904b6542b174e"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.301"
  depends_on "cairo"
  depends_on "libbirch" => "1.301"

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
