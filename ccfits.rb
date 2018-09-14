require 'formula'

# stolen from https://gist.github.com/odakahirokazu/2698406

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Ccfits < Formula
  homepage 'http://heasarc.gsfc.nasa.gov/fitsio/CCfits/'
  url 'http://heasarc.gsfc.nasa.gov/fitsio/CCfits/CCfits-2.4.tar.gz'
  md5 'dd9a11d964590dd5f3fd5a3491b2c1ce'

  depends_on 'cfitsio'

  def install
    # ENV.x11 # if your formula requires any X11 headers
    # ENV.j1  # if your formula's build system can't parallelize

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test CCfits`.
    system "false"
  end
end
