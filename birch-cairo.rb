class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.535.tar.gz"
  version "1.535"
  sha256 "8b2068c93c52b4ec11a60a780069f125759e32314e944429ac2c49a9386a6f40"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.535"
  depends_on "cairo"
  depends_on "libbirch" => "1.535"

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
