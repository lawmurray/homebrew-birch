class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.259.tar.gz"
  version "1.259"
  sha256 "0d79025f7262f8be1a873eec8f459ae1be2032ea57af9b82a844e4b392a36f44"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.259"
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
