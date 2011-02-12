require 'formula'

class Freetype <Formula
  url 'http://download.savannah.gnu.org/releases/freetype/freetype-2.4.4.tar.gz'
  homepage 'http://www.freetype.org/'
  md5 '9273efacffb683483e58a9e113efae9f'

  # depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
