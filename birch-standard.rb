class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.504.tar.gz"
  version "1.504"
  sha256 "5e06fa28a0587d21ab8e693b05676f3f4332385f186b22862933c120b20284b5"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.504"
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
