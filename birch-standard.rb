class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.482.tar.gz"
  version "1.482"
  sha256 "6851c326c2215b20f23668202ac0d6de0ac16a0dd07b2649267c73e8fd66127f"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.482"
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
