class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.530.tar.gz"
  version "1.530"
  sha256 "ac21d41eff9d001a508d61f762f1b60e7d62e0a904b990be642a7ce469499cf5"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.530"
  depends_on "cairo"
  depends_on "libbirch" => "1.530"

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
