# Build AppImage
cd /opt/appimage/resources

mkdir -p AppDir/usr/share/metainfo
cp peercoin-qt.appdata.xml AppDir/usr/share/metainfo/

export QT_SELECT=qt5
./linuxdeploy-x86_64.AppImage --appdir AppDir \
                              -e peercoin/src/qt/peercoin-qt \
                              -d peercoin-qt.desktop \
                              -i peercoin/share/pixmaps/peercoin128.png \
                              --plugin qt \
                              --output appimage
