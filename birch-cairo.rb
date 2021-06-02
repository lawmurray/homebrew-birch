class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.596.tar.gz"
  version "1.596"
  sha256 "1c4c54f2446527bd82e0686f88957f7c8ec7e07ddab0e9be3caf7f45af570ed6"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.596"
  depends_on "cairo"
  depends_on "libbirch" => "1.596"

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
