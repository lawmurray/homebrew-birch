class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.186"
  sha256 "f63eef9d1c4b2ff21fe4f1451237e04609361ea056b74d4298ae30c30455ef74"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.186"
  depends_on "cairo"
  depends_on "libbirch" => "0.186"

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
