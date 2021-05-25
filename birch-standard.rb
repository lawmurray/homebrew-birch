class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.562.tar.gz"
  version "1.562"
  sha256 "2b4776ad519c9efd762acb394240a4b41cb22632726c675ae11222e324cf5c0d"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.562"
  depends_on "libyaml"

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
