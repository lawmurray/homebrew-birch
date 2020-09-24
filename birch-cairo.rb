class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-cairo-unversioned.tar.gz"
  version "0.203"
  sha256 "2b53c1c54d6c498b676ac3a146c9aefd87f3f0443bae094cb64ffbc1e4bc1b93"
  license "Apache-2.0"
  depends_on "birch-standard" => "0.203"
  depends_on "cairo"
  depends_on "libbirch" => "0.203"

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
