require 'formula'

class Npk < Formula
  homepage 'http://github.com/lqez/npk/'
  url 'https://github.com/lqez/npk/archive/v1.9.1.tar.gz'
  sha256 '51bd6d9b87fd0d7b46eca35ec96df5cbd2219cf5e11baad6f7ddf922eda380f6'

  depends_on 'cmake' => :build

  def install
    system "cmake", ".", "-DDEV_MODE=True", *std_cmake_args
    system "make install"
  end

  def test
    system "#{bin}/npk", "-version"
  end
end
