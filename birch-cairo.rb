class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.188"
  sha256 "006b205a1e697e538d382b296c96cd92e7126bede2a43394a8847c86b5dd4037"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.188"
  depends_on "cairo"
  depends_on "libbirch" => "0.188"

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
