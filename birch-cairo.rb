class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.624.tar.gz"
  version "1.624"
  sha256 "6c77b28c6fd08a5d3564cf3d1c7a65b2b53292bfef4f6de0806eff3db43a7958"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.624"
  depends_on "cairo"
  depends_on "libbirch" => "1.624"

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
