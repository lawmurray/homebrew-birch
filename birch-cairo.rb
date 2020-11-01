class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.51"
  sha256 "5f412efc4a7d9d864553b454f4be207c78a6c62026319c2f26c3de82bbcf9ee2"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.51"
  depends_on "cairo"
  depends_on "libbirch" => "1.51"

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
