class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.526.tar.gz"
  version "1.526"
  sha256 "224c0c6fc5342ad68a12f4c209251e050d77df8f63accb753dbedf380bff3cef"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.526"
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
