require 'formula'

class Ministat < Formula
  homepage 'https://github.com/codahale/ministat'
  url 'https://github.com/codahale/ministat.git'
  version '0.0.1'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    system "ministat"
  end
end
