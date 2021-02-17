class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.240"
  sha256 "670b3ee09587bd130966047efa406c1645fcaa378e5e5bf5e336f24de4ee20e6"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.240"
  depends_on "cairo"
  depends_on "libbirch" => "1.240"

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
