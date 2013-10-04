require 'formula'

class Npk < Formula
  homepage 'http://github.com/lqez/npk/'
  url 'https://github.com/lqez/npk/archive/v1.9.1.tar.gz'
  sha1 'a76bea612a7e2e30bb57636e8b52a6e45a991214'

  depends_on 'cmake' => :build

  def install
    system "cmake", ".", "-DDEV_MODE=True", *std_cmake_args
    system "make install"
  end

  def test
    system "#{bin}/npk", "-version"
  end
end
