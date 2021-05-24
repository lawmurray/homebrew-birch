class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.548.tar.gz"
  version "1.548"
  sha256 "8ce09dd6d6bd26edda89586e9fbebfad4ba38b502d56fbf7a948bef04dd789d7"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.548"
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
