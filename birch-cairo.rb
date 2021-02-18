class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.258.tar.gz"
  version "1.258"
  sha256 "e623b85374c933464a00e0ab7f7a6c58813476f29cd884238ef70d6391993f75"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.258"
  depends_on "cairo"
  depends_on "libbirch" => "1.258"

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
