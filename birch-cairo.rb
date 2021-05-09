class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.507.tar.gz"
  version "1.507"
  sha256 "c30e216721701a6c2eec86bcb8f6490568267a9b485cb81b5a3a44a57adb8896"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.507"
  depends_on "cairo"
  depends_on "libbirch" => "1.507"

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
