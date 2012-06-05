http://nih.at/Mercurial_Access.html
hg clone http://hg.nih.at/libzip

To build:
mkdir build
cd build
ccmake -i ../libzip
  SET the install path to pwd/install
make
make install


New build instructions
======================

MSVC 2008
---------

Use cmake, set zlib paths
set install paths to project_build/install

(turn off BUILD_SHARE_LIBS for static builds)
(switch from /MD to /MT for static-runtime-builds -- not used anymore)

build and install both debug and install

