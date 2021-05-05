class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.489.tar.gz"
  version "1.489"
  sha256 "71af278fb5cc0d87fe620670d940c1ad5fd354075b1795c9394a4cac7d060faf"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.489"
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
