class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.8"
  sha256 "8d526da5b8b846e278d57509ee70e31874c81b40ef16d08ea6f77053724ce430"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.8"
  depends_on "cairo"
  depends_on "libbirch" => "1.8"

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
