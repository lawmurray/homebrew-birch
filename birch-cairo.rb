class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.605.tar.gz"
  version "1.605"
  sha256 "b642a7c2ee7d84e909b6fecc80b9a50c14d796cdfba81201d9d422c6bfdee610"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.605"
  depends_on "cairo"
  depends_on "libbirch" => "1.605"

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
