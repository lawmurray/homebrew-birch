class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.231"
  sha256 "1265adf851119a4efa00c911a82559ab897b71f52ff895f232721f6650f69f58"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.231"
  depends_on "cairo"
  depends_on "libbirch" => "1.231"

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
