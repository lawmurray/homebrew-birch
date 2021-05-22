class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.545.tar.gz"
  version "1.545"
  sha256 "45b8303d47c26b5d94af1b9312358d17bff2912eceb67e741bcc712784936d7e"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.545"
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
