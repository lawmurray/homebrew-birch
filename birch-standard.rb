class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-unversioned.tar.gz"
  version "1.231"
  sha256 "fd0b186edacb79443c19b0b8bedd9c9eff2f06a145af0d30ec4ca15a24adbc6b"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.231"
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
