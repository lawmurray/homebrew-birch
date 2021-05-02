class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.478.tar.gz"
  version "1.478"
  sha256 "8280838227a983f27009e760b332c94b63c5d30cd7a3568935ca7bf636697121"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.478"
  depends_on "cairo"
  depends_on "libbirch" => "1.478"

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
