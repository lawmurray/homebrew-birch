class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.625.tar.gz"
  version "1.625"
  sha256 "df524383eb40f9b2f5dd87c5fc20283ee605cad0f04206eeb1969819d51ea318"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.625"
  depends_on "cairo"
  depends_on "libbirch" => "1.625"

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
