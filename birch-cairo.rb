class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.106"
  sha256 "198c9e1098864de98484374c5508cd4a5ddaafe4b644a6cde56dc5f2e77fd55c"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.106"
  depends_on "cairo"
  depends_on "libbirch" => "1.106"

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
