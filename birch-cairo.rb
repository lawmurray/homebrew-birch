class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-1.607.tar.gz"
  version "1.607"
  sha256 "0cd54808600ddd61a0b61554eacf56e1c6fc228e6b63319a4a9b070e237fe83d"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.607"
  depends_on "cairo"
  depends_on "libbirch" => "1.607"

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
