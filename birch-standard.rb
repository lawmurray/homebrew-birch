class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.511.tar.gz"
  version "1.511"
  sha256 "eaa49092e5027726e518e6f16eb746ebaee6a28f703eab78575e4327ba387e12"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.511"
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
