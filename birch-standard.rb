class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.258.tar.gz"
  version "1.258"
  sha256 "9c9de355200559a0f56f64ce71c0ead140393c78fd3cda80d914668b215c407d"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.258"
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
