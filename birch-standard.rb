class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.487.tar.gz"
  version "1.487"
  sha256 "e57e740effe52d710f9e627ccd402b03141f54778037c034b665c756027be69d"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.487"
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
