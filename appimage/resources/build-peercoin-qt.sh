# Build Peercoin-Qt
cd /opt/appimage/resources/peercoin/

./contrib/install_db4.sh `pwd`
ln -sf `pwd`/db4/include /usr/local/include/bdb4.8
ln -sf `pwd`/db4/lib/*.a /usr/local/lib

./autogen.sh
./configure --with-gui=qt5
make -j$(nproc)
make check
