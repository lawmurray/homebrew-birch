class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.554.tar.gz"
  version "1.554"
  sha256 "79c3e086f288a9c8f675cd42d144e6901006dc26621ea27d02ae85ffe897dbbc"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.554"
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
