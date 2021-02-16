class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-unversioned.tar.gz"
  version "1.235"
  sha256 "d6e9501e5a9380d9a5916dbaa4da63a1371f3975c1b05c4f76b560eb5ea7aeb2"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.235"
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
