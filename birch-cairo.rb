class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.4"
  sha256 "8d018a5d09d53e7eea5f06d6591ee6e6bd6293ec01c74470d5b525ec00452adf"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.4"
  depends_on "cairo"
  depends_on "libbirch" => "1.4"

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
