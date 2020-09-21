class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.191"
  sha256 "259f854a9de5c0482a2cc671a79317f7dbe48fc5b0d4cc66e47496ddaab13706"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.191"
  depends_on "cairo"
  depends_on "libbirch" => "0.191"

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
