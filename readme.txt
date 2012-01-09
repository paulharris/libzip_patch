http://nih.at/Mercurial_Access.html
hg clone http://hg.nih.at/libzip

To build:
mkdir build
cd build
ccmake -i ../libzip
  SET the install path to pwd/install
make
make install


