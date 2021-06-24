class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.624.tar.gz"
  version "1.624"
  sha256 "1a32f71493359fb8f57c537b698255087a7e2f7fa7cf8086766be853c88d9ef9"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.624"
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
