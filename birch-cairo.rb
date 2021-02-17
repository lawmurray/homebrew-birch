class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.241"
  sha256 "145afd08da05aa962c6ccd744c826f6935f044e9878e5465ff54d05ff6769a89"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.241"
  depends_on "cairo"
  depends_on "libbirch" => "1.241"

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
