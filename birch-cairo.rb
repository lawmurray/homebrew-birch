class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.297.tar.gz"
  version "1.297"
  sha256 "d30b7a224815798da289625d674a60b65647f6dd48d055d2a9ae7b965c4b833c"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.297"
  depends_on "cairo"
  depends_on "libbirch" => "1.297"

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
