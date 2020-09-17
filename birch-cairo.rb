class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.163"
  sha256 "cfa7efcb7c15a7dca4be9a32358b5e3431a795f18333d5ea49f6eb48b56e5fcd"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.163"
  depends_on "cairo"
  depends_on "libbirch" => "0.163"

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
