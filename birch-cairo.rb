class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.526.tar.gz"
  version "1.526"
  sha256 "4cbd25ae00548513954578c8e0ce98d9f9bb1e399ac4cf080bc444102606bb6c"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.526"
  depends_on "cairo"
  depends_on "libbirch" => "1.526"

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
