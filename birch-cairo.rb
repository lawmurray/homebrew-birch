class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.54"
  sha256 "02868b931935b800e8b245c1641307d5c6849dc5df5889fa4bb22ef8b7fc5a06"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.54"
  depends_on "cairo"
  depends_on "libbirch" => "1.54"

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
