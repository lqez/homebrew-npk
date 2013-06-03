require 'formula'

class Npk < Formula
  homepage 'http://github.com/lqez/npk/'
  url 'https://github.com/lqez/npk/archive/v1.9.tar.gz'
  sha1 'c15069e9aeada2b09d209f5d3ce492e6668e53fb'

  depends_on 'cmake' => :build

  def install
    system "cmake", ".", "-DDEV_MODE=True", *std_cmake_args
    system "make install"
  end

  def test
    system "#{bin}/npk", "-version"
  end
end
