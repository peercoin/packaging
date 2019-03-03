# Build Peercoin-Qt
cd /opt/appimage/resources/peercoin/

./contrib/install_db4.sh `pwd`
ln -sf `pwd`/db4/include /usr/local/include/bdb4.8
ln -sf `pwd`/db4/lib/*.a /usr/local/lib

sed -i 's/define(_CLIENT_VERSION_IS_RELEASE, false)/define(_CLIENT_VERSION_IS_RELEASE, true)/' configure.ac

./autogen.sh

./configure --with-gui=qt5 \
            --disable-debug \
            --disable-maintainer-mode \
            --disable-dependency-tracking

make -j$(nproc)

make check
