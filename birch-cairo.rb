class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "1.9"
  sha256 "225a054ff99b435aded9242cc4939d0330dbc7c67ef4fa6337341e5cd33ade5d"
  license "Apache-2.0"
  depends_on "birch-standard" => "1.9"
  depends_on "cairo"
  depends_on "libbirch" => "1.9"

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
