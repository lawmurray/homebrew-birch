class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.597.tar.gz"
  version "1.597"
  sha256 "0f4ea6857b9578548331d01c3edbe7ce6a4efcb123eb01b11a793e3c70d01d86"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.597"
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
