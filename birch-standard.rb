class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.491.tar.gz"
  version "1.491"
  sha256 "a6bb31983ba1817244caeebd5cfe4c707718eabb3eefdd4e7c27b5a7ff295df1"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.491"
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
