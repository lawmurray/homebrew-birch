class BirchStandard < Formula
  desc "Standard library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-birch/master/birch-standard-1.291.tar.gz"
  version "1.291"
  sha256 "1044fe5d9e985ec38b3576b22dc5ef565f32fce8348b9f5e67e56ca824692a04"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libbirch" => "1.291"
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
