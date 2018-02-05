# MediaBrowser

## build on macOS
```
#
# Check OS version
#
$ sw_vers
ProductName:	Mac OS X
ProductVersion:	10.13.3
BuildVersion:	17D47

#
# Install the cmake tool.
# 
$ brew install cmake
$ cmake -version
cmake version 3.10.2

#
# Install the developer tools 
#
$ xcode-select --install

#
# Install the Python 
#
$ virtualenv -p python env

$ source env/bin/activate
(env) $ python
Python 2.7.14


#
# cef download ( http://opensource.spotify.com/cefbuilds/index.html )
#
# Mac OS X 64-bit Builds
# 
# Standard Distribution : cef_binary_3.3282.1731.gfc9a4fa_macosx64.tar.bz2
# Minimal Distribution : cef_binary_3.3282.1731.gfc9a4fa_macosx64_minimal.tar.bz2
# Sample Application : cef_binary_3.3282.1731.gfc9a4fa_macosx64_client.tar.bz2
# Debug Symbols : cef_binary_3.3282.1731.gfc9a4fa_macosx64_debug_symbols.tar.bz2
# Release Symbols : cef_binary_3.3282.1731.gfc9a4fa_macosx64_release_symbols.tar.bz2

$ git checkout https://github.com/bwahn/MediaBrowser.git
$ cd MediaBrowser

// Copy cef lib from Downloads folder
$ mv ~/Downloads/cef_binary_3.3282.1731.gfc9a4fa_macosx64.tar.bz2 cef.tar.bz2

$ bzip2 -cd cef.tar.bz2 | tar xvf -
$ cd cef
$ cmake .

$ cd libcef_dll_wrapper
$ make

$ ~/MediaBrowser/cef/tests/cefsimple
$ make 

```
