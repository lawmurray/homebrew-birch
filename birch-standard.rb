class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.478.tar.gz"
  version "1.478"
  sha256 "0b4ae886a94d4645107c6e09b7a956cb8ba96e828aa75cb10d8baa6f4e49591d"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.478"
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
