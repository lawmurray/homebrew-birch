class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.557.tar.gz"
  version "1.557"
  sha256 "115de92c4b4dbdcf33b0a02ed036f3ae59ceb6d3e515b8b29de165cdb136ea0b"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.557"
  depends_on "cairo"
  depends_on "libbirch" => "1.557"

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
