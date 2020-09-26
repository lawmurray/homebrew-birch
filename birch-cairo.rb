class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.6"
  sha256 "669899dcf8af7db119e0088a6bdf58a1a2e7af6726a1d2208dff9a3ec33727c3"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.6"
  depends_on "cairo"
  depends_on "libbirch" => "1.6"

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
